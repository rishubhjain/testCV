# resize

import cv2
import numpy as np

def resize1(image, height, width):

    
    height = float(height)
    width = int(width)
    r = height/image.shape[1]
    dim = (width, int(image.shape[0] * r))
    resized = cv2.resize(image, dim, interpolation = cv2.INTER_AREA)
    if resized is None:
	    return 0
    
   

    #res = np.hstack((img, resized))
    #cv2.imshow('origional',img)
    #cv2.imshow('resize', resized)

    #cv2.waitKey(0)
    return resized
