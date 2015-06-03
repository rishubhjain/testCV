#SIFT (Scale-Invariant Feature Transform)

import cv2
import numpy as np

def SIFT(image):

    img = cv2.imread(image)
    gray= cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    sift = cv2.SIFT()
    kp = sift.detect(gray,None)
    img=cv2.drawKeypoints(gray,kp)

    return
