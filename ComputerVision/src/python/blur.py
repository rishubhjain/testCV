#Averaging

import cv2
import numpy as np
import Point
def blur(img,kernel_size):
    
    if img is None:
        print 'Error in input Image'
        return 0
    

    kernel_size=Point.point_int(kernel_size)
    
    blurimage = cv2.blur(img,kernel_size)

    return blurimage
