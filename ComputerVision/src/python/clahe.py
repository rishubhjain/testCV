import cv2
import numpy as np

def CLAHE(img, clipLimit, titleGridSize):
    
    if img is None:
        print 'Error in input Image'
        return 0
    
    clipLimit = int(clipLimit)
    titleGridSize1 = int(titleGridSize[0])
    titleGridSize2 = int(titleGridSize[1])

    titleGridSizeF = (titleGridSize1, titleGridSize2)
    clahe = cv2.createCLAHE(clipLimit,titleGridSizeF)
    cl1 = clahe.apply(img)
    
   
    return cl1
