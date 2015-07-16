import cv2
import numpy as np
import Point

def fast(image,threshold,nonmaxSuppression):
    threshold=int(threshold)
    nonmaxSuppression=int(nonmaxSuppression)
    fast = cv2.FastFeatureDetector()
    fast.setInt('threshold',threshold)
    fast.setBool('nonmaxSuppression',nonmaxSuppression)
    if image is None:
        print "Please check image"
        return
    
    
    kp = fast.detect(image,None)
    return kp
