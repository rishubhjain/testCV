import cv2
import numpy as np
import Point

def drawkeypoints(image,keypoints,color):
    if image is None:
        print "Please check image"
        return
    color=Point.point_int(color)
    
    img=cv2.drawKeypoints(image,keypoints,color)
    return img
