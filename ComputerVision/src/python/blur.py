#Averaging

import cv2
import numpy as np
import Kernel
def Blur(img,kernel_type,kernel_size):
    
    if img is None:
        print 'Error in input Image'
        return 0
    

    kernel=Kernel.kernel(kernel_type,kernel_size)

    blurimage = cv2.blur(img,kernel)

    return blurimage
