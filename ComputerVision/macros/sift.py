#SIFT (Scale-Invariant Feature Transform)

import cv2
import numpy as np

def SIFT(image):

    
    #gray= cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
    sift = cv2.SIFT()
    kp = sift.detect(image,None)
    img=cv2.drawKeypoints(image,kp)
    if img is None:
        return 0

    return img
