import cv2
import numpy as np


def pyrUp(image,iteration):

    iteration=int(iteration)
    for i in range(iteration):
        pyrup_image = cv2.pyrUp(image)
    

    return pyrup_image
