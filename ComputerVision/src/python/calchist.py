
import cv2
import numpy as np

def histogram2d(img,channels,mask,histsize,ranges):

    if img is None:
        print 'Error in input Image'
        return 0
    #channels = int(channels)
    print mask
    
    hist = cv2.calcHist(img, channels, str(mask), histsize, ranges )
        
    return hist
        
