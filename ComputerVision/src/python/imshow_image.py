import cv2
import numpy as np

def imshow(image):
    if image is None:
        print 'Error in input Image'
        return 0
    cv2.imshow("Image",image)
    cv2.waitKey(0)
    
    return image
