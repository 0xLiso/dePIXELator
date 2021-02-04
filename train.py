import tensorflow as tf
import pathlib
import numpy as np
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt

from batchgenV2 import DePIXELatorBatchGenV2


def preinit():
    gpus = tf.config.experimental.list_physical_devices('GPU')
    if gpus:
        try:
            # Currently, memory growth needs to be the same across GPUs
            for gpu in gpus:
                tf.config.experimental.set_memory_growth(gpu, True)
            logical_gpus = tf.config.experimental.list_logical_devices('GPU')
            print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPUs")
        except RuntimeError as e:
            # Memory growth must be set before GPUs have been initialized
            print(e)
    

       
def get_model(img_height,img_width,data_format='channels_first'):
    auto_encoder=None
    data_format_shape=(3,img_height,img_width)
    if data_format!='channels_first':
        data_format_shape=(img_height,img_width,3)
    try:
        input_img = tf.keras.layers.Input(shape=data_format_shape)  #source res channels_first for cuda+cudnn

        l1 = tf.keras.layers.Conv2D(64, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(input_img)
        l2 = tf.keras.layers.Conv2D(64, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l1)
        l3 = tf.keras.layers.MaxPool2D(padding='same')(l2)

        l4 = tf.keras.layers.Conv2D(128, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l3)
        l5 = tf.keras.layers.Conv2D(128, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l4)
        l6 = tf.keras.layers.MaxPool2D(padding='same')(l5)

        l7 = tf.keras.layers.Conv2D(256, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l6)

        l8 = tf.keras.layers.UpSampling2D()(l7)
        l9 = tf.keras.layers.Conv2D(128, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l8)
        l10 = tf.keras.layers.Conv2D(128, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l9)

        l11 = tf.keras.layers.add([l10, l5])

        l12 = tf.keras.layers.UpSampling2D()(l11)
        l13 = tf.keras.layers.Conv2D(64, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l12)
        l14 = tf.keras.layers.Conv2D(64, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l13)

        l15 = tf.keras.layers.add([l14, l2])

        decoded_image = tf.keras.layers.Conv2D(3, (3, 3), padding='same', kernel_initializer='he_uniform', activation='relu', activity_regularizer=tf.keras.regularizers.l2(10e-10))(l15)

        auto_encoder = tf.keras.models.Model(inputs=(input_img), outputs=decoded_image)

        auto_encoder.compile(optimizer='Adam', loss='mean_squared_error')
    except Exception as e:
        print("Error creating model. Error:{}".format(e))
        raise e
        
    return auto_encoder
    


    
    
    
    
        
def train():
    img_height = 180
    img_width = 320

    batch_size = 16
    
    num_epochs = 100

    train_path = "/home/jupyter-anlismon/data/nuberoja/train"
    val_path = "/home/jupyter-anlismon/data/nuberoja/validation"
    model_path = "/home/jupyter-anlismon/models/v1"
    data_format = 'channels_first'
    
    if tf.test.is_built_with_cuda():        
        tf.keras.backend.set_image_data_format('channels_first')
    else:
        data_format = 'channels_last'
        tf.keras.backend.set_image_data_format('channels_last')
    print("Using image format: {}".format(data_format))
    
    auto_encoder = get_model(img_height, img_width, data_format)
    
    early_stop = tf.keras.callbacks.EarlyStopping(monitor='val_loss', patience=5)
    
    
    data_gen = DePIXELatorBatchGenV2(directory_high_res=train_path,
                 image_size_high=(img_height, img_width),
                 batch_size=batch_size,
                 shuffle=True,
                 seed=42,
                 data_format=data_format)
    validator_gen = DePIXELatorBatchGenV2(directory_high_res=val_path,
                 image_size_high=(img_height, img_width),
                 batch_size=batch_size,
                 shuffle=True,
                 seed=42,
                 data_format=data_format)
    
    
    history = auto_encoder.fit(data_gen ,
                epochs=num_epochs,
                batch_size=batch_size,
                shuffle=True,
                validation_data=validator_gen,
                callbacks=[early_stop])
    
    history_df = pd.DataFrame(history.history)
    history_df['epoch'] = history.epoch
    fig = plt.Figure(figsize=(4, 3))

    epochs_to_mean = 1

    if False:
        plt.plot(history_df['loss'].rolling(epochs_to_mean).mean(), 'b')
        plt.plot(history_df['val_loss'].rolling(epochs_to_mean).mean(), '-r')
        plt.title('Learning Curves')
        plt.xlabel('Epochs')
        plt.ylabel('Loss')
        plt.legend(['traininig loss', 'validation loss'])
        fig.savefig("history.jpg")
    
    #https://machinelearningmastery.com/save-load-keras-deep-learning-models/
    # serialize model to JSON
    model_json = auto_encoder.to_json()
    with open(f"{model_path}/model_{img_width}_{img_height}.json", "w") as json_file:
        json_file.write(model_json)
    # serialize weights to HDF5
    auto_encoder.save_weights(f"{model_path}/model_{img_width}_{img_height}.h5")
    print("Model saved to disk")
    
            
if __name__ == "__main__":
    print("execute with CUDA_VISIBLE_DEVICES=1 python train.py ")
    preinit()
    train()
    