import cv2
import numpy as np

def imread(image_path):

    image=cv2.imread(image_path)
    if image is None:
	    return 0
    else:
            return image
    return image
