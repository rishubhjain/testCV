import cv2
import numpy as np


def brief(image,kp):
    if image is None:
        print 'Error in input Image'
        return 0,0
    
    kp,des=brief.compute(img,kp)

    return (kp,des)
