import cv2
import numpy as np
import Point

def kernel(kernel_type,array_size):

    size=Point.point_int(array_size)
    kernel_type=int(kernel_type)

    if kernel_type==1:
        kernel=cv2.getStructuringElement(cv2.MORPH_RECT,size)

    if kernel_type==2:
        kernel=cv2.getStructuringElement(cv2.MORPH_ELLIPSE,size)

    if kernel_type==3:
        kernel=cv2.getStructuringElement(cv2.MORPH_CROSS,size)

    return kernel
