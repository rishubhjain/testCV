import cv2
import numpy as np

def imread(image_path):

    image=cv2.imread(image_path)
    if image is None:
	print 'wrong path'
        return 0
    return image
