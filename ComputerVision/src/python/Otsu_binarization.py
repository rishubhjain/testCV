# This file contains otsu's binarization method

import cv2
import numpy as np


def otsu(image):
 
    img = image
    if img is None
	return 0
    
    threshold=int(threshold)
    
    maxVal=int(maxVal)
    ret, thresh = cv2.threshold(img,threshold,maxVal,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
    
    return ret,thresh


    
