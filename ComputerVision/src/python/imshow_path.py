import cv2
import numpy as np

def imshow(image_path):
    image=cv2.imread(image_path)
    cv2.imshow("Image",image)
    cv2.waitKey(0)
    
    return image
