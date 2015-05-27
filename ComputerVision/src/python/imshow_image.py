import cv2
import numpy as np

def imshow(image):
    
    cv2.imshow("Image",image)
    cv2.waitKey(0)
    
    return image
