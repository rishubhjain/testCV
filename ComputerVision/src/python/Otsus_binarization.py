# This file contains otsu's binarization method

import cv2
import numpy as np


def otsu(image,threshold,maxVal):
 
    
    if image is None:
        print 'Error in input Image'
        return 0,0
    threshold=int(threshold)
    
    maxVal=int(maxVal)
    ret, thresh = cv2.threshold(image,threshold,maxVal,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
    
    return ret,thresh


    
  
