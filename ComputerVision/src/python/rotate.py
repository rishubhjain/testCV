import cv2
import numpy as np

def rotate1(image,angle):
    #refine this function for angle in float value
    rows,cols = img.shape   
    if image is None:
	    return 0
    angle=int(angle)

    M = cv2.getRotationMatrix2D((cols/2,rows/2),angle,1)
    dst = cv2.warpAffine(image,M,(cols,rows))


            
    return dst
