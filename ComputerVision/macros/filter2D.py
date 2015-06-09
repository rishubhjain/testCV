#This function will blur the image.

import cv2
import numpy as np

#color image
def filter2D(image,ddepth):

    read_original = image
    
    kernal = np.ones((5,5),np.float32)/25
    ddepth=int(ddepth)
    dst = cv2.filter2D(read_original, ddepth, kernal)
    
    transformed = np.hstack((read_original,dst))
    
    return transformed
