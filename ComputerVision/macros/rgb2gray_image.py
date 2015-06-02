import cv2
import numpy as np

def rgb2gray(image):
	if image is None:
	    return 0
    RGB2GRAY = cv2.cvtColor(image,cv2.COLOR_RGB2GRAY)
    #cv2.imshow ('Converted to rgb2gray',RGB2GRAY)
    #cv2.waitKey(0)
    

    return RGB2GRAY



