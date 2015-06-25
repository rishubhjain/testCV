
import cv2
import numpy as np
#from matplotlib import pyplot as plt


def thresh_tozero_inv(image):
    read_original = image
    ret,thresh5 = cv2.threshold(read_original, 150, 255, cv2.THRESH_TOZERO_INV)
    dst = np.hstack((read_original,thresh5))
    return dst
