import cv2
import numpy as np

def cv_size(image):
    if image is None:
        print 'Error in input Image'
        return 0
   
    
    height, width, depth = image.shape
    
    

    return (height,width,depth)



