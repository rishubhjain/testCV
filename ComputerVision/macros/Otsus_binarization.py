# This file contains otsu's binarization method

import cv2
import numpy as np
from matplotlib import pyplot as plt

def otsu(image):
 
    img = image
    
    gray = cv2.cvtColor(img,cv2.COLOR_RGB2GRAY)
    ret, thresh = cv2.threshold(gray,0,255,cv2.THRESH_BINARY+cv2.THRESH_OTSU)
    dst = np.hstack((gray, thresh))
    cv2.imshow('Otsus binarization', dst)
    cv2.waitKey(0)
    return


    
