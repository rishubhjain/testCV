#accept kernal type and kernel size in the sci function as a parameter and then make a kernal here.

import cv2
import numpy as np
import Kernel

def gradient(image,kernel_type,kernel_size):
    if image is None:
        print 'Error in input Image'
        return 0
    kernel=Kernel.kernel(kernel_type,kernel_size)
    gradient = cv2.morphologyEx(image, cv2.MORPH_GRADIENT, kernel)


    return  gradient
