# this "equalizeHist" function of opencv  works same as "histeq" of MATLAB

import cv2
import numpy as np

def equalizeHist_path(path):

    read_origional = cv2.imread(path,0)
    equ = cv2.equalizeHist(read_origional)

    dst = np.hstack((read_origional,equ))
    
    return dst


#image should be grayscale
def equalizeHist_image(img):

    read_origional = img
    equ = cv2.equalizeHist(read_origional)

    dst = np.hstack((read_origional,equ))
    
    return dst
