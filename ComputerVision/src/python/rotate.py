import cv2
import numpy as np
import cvcheck_channel
def rotate1(image,angle):
    if image is None:
            print 'Error in input Image'
	    return 0
    if cvcheck_channel.check_channel(image)==2:
        rows,cols = image.shape
    elif cvcheck_channel.check_channel(image)==3:
        rows,cols,depth = image.shape 
    
    angle=int(angle)

    M = cv2.getRotationMatrix2D((cols/2,rows/2),angle,1)
    dst = cv2.warpAffine(image,M,(cols,rows))


            
    return dst
