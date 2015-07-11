# All the arithmatic operations are in this file. For Ex: adding tow images, adding weight to images, subtraction, bitwise operation

import cv2
import numpy as np

def add(img,img1):

    img1 = img
    img2 = img1

    image=cv2.add(img1,img2)
    
    return image
