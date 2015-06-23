import cv2
import numpy as np

def rgb2gray(image):

    if image is None:
        print 'Error in input Image'
        return 0
    
    RGB2GRAY = cv2.cvtColor(image,cv2.COLOR_RGB2GRAY)
    
    return RGB2GRAY



