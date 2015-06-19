#accept kernal type and kernel size in the sci function as a parameter and then make a kernal here.

import cv2
import numpy as np
import Kernal

def tophat(image,kernel_type,kernel_size):
    if image is None:
        print 'Error in input Image'
        return 0
    kernel=Kernel.kernel(kernel_type,kernel_size)
    tophat = cv2.morphologyEx(image, cv2.MORPH_TOPHAT, kernel)


    return tophat
