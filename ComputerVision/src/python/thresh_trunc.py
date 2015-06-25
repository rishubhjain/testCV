import cv2
import numpy as np

def thresh_trunc(image,threshold,maxVal):
    if image is None:
        print "Please enter correct Image"
        return 0
    threshold=int(threshold)
    
    maxVal=int(maxVal)
    ret,thresh3 = cv2.threshold(image, threshold, maxVal, cv2.THRESH_TRUNC)
    
    return thresh3
