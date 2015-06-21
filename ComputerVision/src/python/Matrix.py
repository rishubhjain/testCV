import cv2
import numpy as np


def matrix():
    

    image=cv2.imread("N:\\10431540_10152725186810745_1213588225304445559_n.jpg",0)
    mat1=np.asmatrix(image)
    return mat1
