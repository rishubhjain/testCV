#medianBlur
#kSize should be odd number and greater than 1
#the image depth should be CV_8U, CV_16U, or CV_32F, for larger aperture sizes, it can only be CV_8U.

import cv2
import numpy as np
import Kernel


def medianblur(image, kernel_type,kernel_size):

    if image is None:
        print 'Error in input Image'
        return 0
    
    cv2.Laplacian(image,cv2.CV_8U)

    kernel=Kernel.kernel(kernel_type,kernel_size)

    medBlur = cv2.medianBlur(image, kernel)

    
    return medblur
