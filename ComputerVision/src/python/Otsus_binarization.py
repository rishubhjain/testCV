# This file contains otsu's binarization method

import cv2
import numpy as np


def otsu(image):
 
    img = image
	if img is None
		return 0
    
    
    ret, thresh = cv2.threshold(img,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
    
    return thresh


    
