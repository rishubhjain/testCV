import cv2
import numpy as np

def close(image,kernal):
    if image is None:
        print 'Error in input Image'
        return 0

    closing = cv2.morphologyEx( image, cv2.MORPH_CLOSE, kernal )


    return closing
