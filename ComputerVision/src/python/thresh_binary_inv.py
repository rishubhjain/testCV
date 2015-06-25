
import cv2
import numpy as np
#from matplotlib import pyplot as plt


def thresh_binary_inv(image):
    read_original = image
    ret,thresh2 = cv2.threshold(read_original, 130, 255, cv2.THRESH_BINARY_INV)
    dst = np.hstack((read_original,thresh2))
    return dst
