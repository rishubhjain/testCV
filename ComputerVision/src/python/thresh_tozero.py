import cv2
import numpy as np
#from matplotlib import pyplot as plt
def  thresh_tozero(image):
    read_original = image
    ret,thresh4 = cv2.threshold(read_original, 135, 255, cv2.THRESH_TOZERO)
    dst = np.hstack((read_original,thresh4))
    return dst
