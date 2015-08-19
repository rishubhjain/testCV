import cv2
import numpy as np
import Kernel


def sobel(img, xorder, yorder, ksize,mode):
    xorder = int(xorder)
    yorder = int(yorder)
    ksize = int(ksize)
    if mode==1:
        sobl = cv2.Sobel(img, cv2.CV_16S,xorder,yorder,ksize)
    if mode==2:
        sobl = cv2.Sobel(img, cv2.CV_64F,xorder,yorder,ksize) 

    return sobl
