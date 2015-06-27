import cv2
import numpy as np


def brief(image,kp):
    if image is None:
        print 'Error in input Image'
        return 0,0
    brief = cv2.DescriptorExtractor_create("BRIEF")
    kp,des=brief.compute(image,kp)

    return (kp,des)
