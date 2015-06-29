import cv2
import numpy as np

def mat():
    image=cv2.imread("C:\\Users\\Rishubh\\Desktop\\b.jpg")
    img=image[1][:][:]
    print img.shape
    print type(img)
    return img
