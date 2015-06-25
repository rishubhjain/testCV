import cv2
import numpy as np
#from matplotlib import pyplot as plt
def  thresh_tozero(image,threshold,maxVal):
    if image is None:
        print "Please enter correct Image"
        return 0
    threshold=int(threshold)
    
    maxVal=int(maxVal)
    ret,thresh4 = cv2.threshold(image, threshold, maxVal, cv2.THRESH_TOZERO)
    
    return thresh4
