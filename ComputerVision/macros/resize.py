# resize

import cv2
import numpy as np

def resize1(image, height, width, interpolation_unit):

    
    height = float(height)
    width = int(width)
    r = height/image.shape[1]
    dim = (width, int(image.shape[0] * r))
    if interpolation_unit==1:
        interpolation=cv2.INTER_AREA
    elif interpolation_unit==2:
        interpolation=cv2.INTER_CUBIC
    elif interpolation_unit==3
        interpolation=cv2.INTER_LINEAR
    resized = cv2.resize(image, dim, interpolation)
    if resized is None:
	    return 0
    
   

    #res = np.hstack((img, resized))
    #cv2.imshow('origional',img)
    #cv2.imshow('resize', resized)

    #cv2.waitKey(0)
    return resized
