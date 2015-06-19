import cv2
import numpy as np
import Point

def kernal(kernal_type,array_size):

    size=Point.point_int(array_size)
    kernal_type=int(kernal_type)

    if kernal_type==1:
        kernal=cv2.getStructuringElement(cv2.MORPH_RECT,size)

    if kernal_type==2:
        kernal=cv2.getStructuringElement(cv2.MORPH_ELLIPSE,size)

    if kernal_type==3:
        kernal=cv2.getStructuringElement(cv2.MORPH_CROSS,size)

    return kernal
