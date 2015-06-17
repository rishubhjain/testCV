#Averaging

import cv2
import numpy as np

def Blur(img,kSize):
    
    if img is None:
        print 'Error in input Image'
        return 0
    

    kSize1 = int(kSize[0])
    kSize2 = int(kSize[1])

    kSize = (kSize1, kSize2)

    b = cv2.blur(img, kSize)

    return b
