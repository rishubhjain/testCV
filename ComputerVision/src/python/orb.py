import cv2
import numpy as np
import Point


def ORB(image,features,scaleFactor,color,displayimage):
    color=Point.point_int(color)
    features=int(features)
    scaleFactor=int(scaleFactor)
    if image is None:
        print 'Error in input Image'
        return 0,0
    orb = cv2.ORB(features,scaleFactor)
    kp, des = orb.detectAndCompute(image,None)
    img2 = cv2.drawKeypoints(image,kp,color, flags=0)
    if displayimage==1:
        cv2.imshow("image",img2)
        cv2.waitKey(0)
    

    return (kp,des)
