import cv2
import numpy as np
#grayscale image

def matrix(image):
    if image is None:
        print 'please check the Image'
        return 0

    
    mat1=np.asmatrix(image)
    return mat1
