import numpy as np
import threading
import os
import random
import PIL
from PIL import Image
import tensorflow as tf
from tensorflow.python.keras.utils.data_utils import Sequence

# inspired from  https://github.com/fchollet/keras/blob/master/keras/preprocessing/image.py
# only with resize (and optionally cropping) !
class DePIXELatorBatchGenV2(Sequence):
    image_formats = {'png', 'jpg', 'jpeg', 'bmp'}

    def __init__(self, directory_high_res,
                 image_size_high=(720, 1280),
                 batch_size=8,
                 shuffle=True,
                 seed=None,
                 data_format='channels_last'):
        """
        :param directory_high_res: path to the image high quality dataset directory
        :param image_size_high: shape of HR images
        :param batch_size: batch size
        :param shuffle: to shuffle the COCO dataset after each epoch
        :param seed: to set seed when shuffling the dataset
        :param data_format: order of dimensions for TensorFlow.  
                            Prefer channels_first if CUDA+CuDNN or 'channels_last' for other!
        """
        self.directory_high = directory_high_res
        self.image_size_high = tuple(image_size_high)
        
        self.batch_size = batch_size
        self.shuffle = shuffle
        self.seed = seed
        self.data_format = data_format

       
        # + (3,) : for RGB channels
        self.image_shape_hr = image_size_high + (3,)
        
        self.filenames_hr = np.array(self.__list_files_in_dir__(self.directory_high))
        self.indices = np.arange(self.filenames_hr.shape[0])
        self.samples = len(self.filenames_hr)
        print("Found {} images".format(self.samples))


        self._batch_index = 0
        self._total_batches_seen = 0
        

    def __list_files_in_dir__(self,directory):
        """Count supported image files in a directory.
            adapted from https://github.com/fchollet/keras/blob/master/keras/preprocessing/image.py
        # Arguments
            directory: absolute path to the directory containing files to be counted
        # Returns
            Number of valid image files in a dir
        """
        def __recursive_list__(subpath):
            return sorted(os.walk(subpath, followlinks=False), key=lambda tpl: tpl[0])

        filenames = []
        basedir = os.path.dirname(directory)
        for root, _, files in __recursive_list__(directory):
            for fname in files:
                is_valid = False
                for extension in self.image_formats:
                    if fname.lower().endswith('.' + extension):
                        is_valid = True
                        break
                if is_valid:
                    # add filename relative to directory
                    absolute_path = os.path.join(root, fname)
                    filenames.append( absolute_path )
        return filenames

    def reset(self):
        self._batch_index = 0

    def __len__(self):
        return int(np.floor(self.samples / self.batch_size))


    def __getitem__(self, idx):
        index_array = self.indices[idx * self.batch_size:(idx + 1) * self.batch_size]
        batch_hr = np.zeros((self.batch_size,) + self.image_shape_hr, dtype=np.float32)
        batch_lr = np.zeros((self.batch_size,) + self.image_shape_hr, dtype=np.float32)
        
        img_height = self.image_size_high[0]
        img_width = self.image_size_high[1]

        for i, j in enumerate(index_array):
            fname_hr = self.filenames_hr[j]
            
            imagehr = PIL.Image.open(fname_hr).convert("RGB")
            imagelr = imagehr.resize(( img_width//4,img_height//4  ),Image.NEAREST)
            imagelr = imagelr.resize((img_width,img_height),Image.NEAREST)

            batch_hr[i] = np.asarray(imagehr).astype(np.float32)/255.0
            batch_lr[i] = np.asarray(imagelr).astype(np.float32)/255.0
        # I saw some autoencoders that use values from [-1,1] why¿?¿
        if self.data_format == 'channels_first':
            batch_hr = np.transpose(batch_hr, (0, 3, 1, 2))
            batch_lr = np.transpose(batch_lr, (0, 3, 1, 2))

        return batch_lr, batch_hr
    
    def on_epoch_end(self):
        np.random.shuffle(self.indices)


