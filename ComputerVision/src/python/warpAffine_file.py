# warpAffine fumction of opencv is mostly same as affine2D and affine3D of MATLAB

import cv2
import numpy as np

def warpAffine_path(path,x,y):

    read_origional = cv2.imread(path,0)
    x=int(x)
    y=int(y)

    rows,cols = read_origional.shape

    X = np.float32([[1,0,x],[0,1,y]])

    trasformation = cv2.warpAffine(read_origional, X, (cols,rows))

    return trasformation

#image should be grayscale


def warpAffine_image(img,x,y):

    read_origional = img
        
    x=int(x)
    y=int(y)
    rows,cols = read_origional.shape

    X = np.float32([[1,0,x],[0,1,y]])

    trasformation = cv2.warpAffine(read_origional, X, (cols,rows))


    return trasformation
