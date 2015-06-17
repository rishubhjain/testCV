#This function will blur the image.

import cv2
import numpy as np

#color image
def filter(image,depth):

    kernal = np.ones((5,5),np.float32)/25
    depth=int(depth)
    dst = cv2.filter2D(image, depth, kernal)
    
    return dst
