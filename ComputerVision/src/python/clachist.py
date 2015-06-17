# histogram2d in opencv

import cv2
import numpy as np

def histogram2d(img, channels,mask,histsize,ranges):

    if img is None:
        print 'Error in input Image'
        return 0
    channel1 = int(channels)
    

    

    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    hist = cv2.calcHist([hsv], channels, mask, histsize, ranges )
        
    return hist
