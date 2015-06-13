'''src – input image; the image can have any number of channels, which are processed independently, but the depth should be CV_8U, CV_16U, CV_16S, CV_32F or CV_64F.
dst – output image of the same size and type as src.
ksize – Gaussian kernel size. ksize.width and ksize.height can differ but they both must be positive and odd. Or, they can be zero’s and then they are computed from sigma* .
sigmaX – Gaussian kernel standard deviation in X direction.
sigmaY – Gaussian kernel standard deviation in Y direction; if sigmaY is zero, it is set to be equal to sigmaX, if both sigmas are zeros, they are computed from ksize.width and ksize.height , respectively (see getGaussianKernel() for details); to fully control the result regardless of possible future modifications of all this semantics, it is recommended to specify all of ksize, sigmaX, and sigmaY.'''

import cv2
import numpy as np

def gaussianFilter(img, ksize, sigmaX, sigmaY):

    if img is None:
        return 0

    kSize1 = int(ksize[0])
    kSize2 = int(ksize[1])

    kSize = (kSize1, kSize2) 
    sigmaColor = int(sigmaX)
    sigmaSpace = int(sigmaY)

    cv2.bilateralFilter(img, kSize, sigmaColor, sigmaSpace)
    

    return img
