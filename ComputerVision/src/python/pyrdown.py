import cv2
import numpy as np


def pyrDown(image,iteration):

    iteration=int(iteration)
    for i in range(iteration):
        pyrdown_image = cv2.pyrDown(image)
    

    return pyrdown_image
