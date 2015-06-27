import cv2
import numpy as np

def bilateralFilter(image, d, sigmaColor, sigmaSpace):

    if image is None:
        print 'Error in input Image'
        return 0

    d = int(d)
    sigmaColor = int(sigmaColor)
    sigmaSpace = int(sigmaSpace)
    cv2.bilateralFilter(image, d, sigmaColor, sigmaSpace)
    return img
