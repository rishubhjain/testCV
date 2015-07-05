import cv2
import numpy as np

def laplace(image,mode):
    mode=int(mode)
    if mode==1:
        lap = cv2.Laplacian(image, cv2.CV_16S)
    elif mode==2:
        lap = cv2.Laplacian(image, cv2.CV_64F)
    return lap
