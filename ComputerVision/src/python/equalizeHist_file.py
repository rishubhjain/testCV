# this "equalizeHist" function of opencv  works same as "histeq" of MATLAB

import cv2
import numpy as np

def equalizeHist_path(path):

    image = cv2.imread(path,0)
    equ = cv2.equalizeHist(image)
    return equ


#image should be grayscale
def equalizeHist_image(image):
    equ = cv2.equalizeHist(image)

    return equ
