
import cv2
import numpy as np
import Kernel
import Point

def gaussianFilter(image, kernel_type,kernel_size, sigmaX, sigmaY):

    if image is None:
        print 'Error in input Image'
        return 0
    kernel_size=Point.point_int(kernel_size)
    
    if sigmaY==0 and sigmaX==0:
        sigmaX=kernel_size[0]
        sigmaY=kernel_size[1]
        
    kernel=Kernel.kernel(kernel_type,kernel_size)
    sigmaColor = int(sigmaX)
    sigmaSpace = int(sigmaY)

    if kernel_size[0]%2==0 and kernel_size[1]%2==0:
        print 'The kernel size should be odd'
        return 0

    image=cv2.GaussianBlur(image,kernel_size , sigmaColor, sigmaSpace)
    

    return image
