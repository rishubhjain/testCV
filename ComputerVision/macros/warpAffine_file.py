# warpAffine fumction of opencv is mostly same as affine2D and affine3D of MATLAB

import cv2
import numpy as np

def warpAffine_path(path):

    read_origional = cv2.imread(path,0)
   

    rows,cols = read_origional.shape

    X = np.float32([[1,0,100],[0,1,50]])

    trasformation = cv2.warpAffine(read_origional, X, (cols,rows))

    return trasformation

#image should be grayscale


def warpAffine_image(img):

    read_origional = img
    cv2.imshow("Origional image",read_origional)

    rows,cols = read_origional.shape

    X = np.float32([[1,0,100],[0,1,50]])

    trasformation = cv2.warpAffine(read_origional, X, (cols,rows))


    return trasformation
