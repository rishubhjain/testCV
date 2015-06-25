import numpy as np

def tonumpy(image):
    if 'list' in str(type(image)):
        image=np.asarray(image)
    
    return image
