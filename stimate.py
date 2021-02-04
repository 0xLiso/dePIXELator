import sys
import os
import PIL
import tensorflow as tf
import pathlib
import numpy as np

from train import preinit
import matplotlib.pyplot as plt


img_height = 180
img_width = 320
data_format = 'channels_first'

def usage(args):
    print(f"""
    
    Remember to update the img_height and img_width values from {args[0]} file.
    Usage:  CUDA_VISIBLE_DEVICES=1 python {args[0]}  model_json model_h5 directory_frames directory_ouput 
    """)


    
def load_model(model_json, model_h5):
    # load json and create model
    json_file = open(model_json, 'r')
    loaded_model_json = json_file.read()
    json_file.close()
    loaded_model = tf.keras.models.model_from_json(loaded_model_json)
    # load weights into new model
    loaded_model.load_weights(model_h5)
    print(f"model {model_json}from disk")

    # evaluate loaded model on test data
    loaded_model.compile(optimizer='Adam', loss='mean_squared_error')
    return loaded_model





def stimate( model_json, model_h5, directory_frames, directory_ouput ):
    
    preinit()
    
    if tf.test.is_built_with_cuda():
        data_format = 'channels_first'
        tf.keras.backend.set_image_data_format('channels_first')
    else:
        data_format = 'channels_last'
        tf.keras.backend.set_image_data_format('channels_last')
    
    print("Using image format: {}".format(data_format))
    
    
    auto_encoder = load_model(model_json, model_h5)
    nimgs=0
    for img in os.listdir(directory_frames ):
        try:
            I = np.asarray(PIL.Image.open(f"{directory_frames}/{img}").resize((img_width,img_height)) ).astype(np.float32)/255.0
            if data_format=='channels_first':
                image = np.transpose(I, (2, 0, 1))
            res=auto_encoder.predict(image.reshape(-1,3,img_height,img_width))
            res=np.clip(res,0.0,1.0)
            if data_format=='channels_first':
                res = np.transpose(res.reshape((3,img_height,img_width)), (1, 2, 0))
            plt.imsave(f'{directory_ouput}/{img}', res)
            nimgs+=1
            
        except Exception as e:
            print(str(e))
            raise e
    print(f"predicted {nimgs}")










if __name__ == "__main__":
    if len(sys.argv) != 5:
        usage(sys.argv)
        exit( 1)
    model_json = sys.argv[1]
    model_h5 = sys.argv[2]
    directory_frames = sys.argv[3]
    directory_ouput = sys.argv[4]
    stimate( model_json, model_h5, directory_frames, directory_ouput )
    exit(0)