import cv2
import numpy as np


def gaussian_pyramid(image,iteration):

    iteration=int(iteration)
    G = image.copy()
    gpA = [G]
    for i in xrange(iteration):
        pyrup_image = cv2.pyrDown(G)
        gpA.append(G)

    return gpA
