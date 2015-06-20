#This function will blur the image.

import cv2
import numpy as np
import Kernel
#color image
def filter(image,depth,kernel_type,kernel_size):

    kernel=Kernel.kernel(kernel_type,kernel_size)
    depth=int(depth)
    dst = cv2.filter2D(image, depth, kernel)
    
    return dst
