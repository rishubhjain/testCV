import cv2
import numpy as np

def CLAHE(img, clipLimit, titleGridSize):
    

    clipLimit = int(clipLimit)
    titleGridSize1 = int(titleGridSize[0])
    titleGridSize2 = int(titleGridSize[1])

    titleGridSizeF = (titleGridSize1, titleGridSize2)
    clahe = cv2.createCLAHE(clipLimit,titleGridSizeF)
    cl1 = clahe.apply(img)
    if cl1 is None
        return 0
   
    return cl1
