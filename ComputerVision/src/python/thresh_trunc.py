import cv2
import numpy as np
#from matplotlib import pyplot as plt



def thresh_trunc(image):
    read_original = image
    ret,thresh3 = cv2.threshold(read_original, 100, 255, cv2.THRESH_TRUNC)
    dst = np.hstack((read_original,thresh3))
    return dst
