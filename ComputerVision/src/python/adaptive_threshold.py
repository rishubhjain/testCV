# This code has the functions related to adaptive threshold

import cv2
import numpy as np


#color image
def adaptive_thresh_mean(image,threshold,block,C):
    threshold=int(threshold)
    block=int(block)
    C=int(C)
    if block%2!=100 and block > 1:
        print 'Block Size should be either odd number or greater than 1'
        return 0

    th1 = cv2.adaptiveThreshold(image,threshold,cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY,block,C)
  
    
    return th1

def adaptive_thresh_gaussian(image,threshold,block,C):
    threshold=int(threshold)
    block=int(block)
    C=int(C)
    if block%2!=100 and block > 1:
        print 'Block Size should be either odd number or greater than 1'
        return 0

    

    th1 = cv2.adaptiveThreshold(image,threshold,cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY,block,C)

    return dst
