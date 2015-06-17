import cv2
import numpy as np


def ORB(image,kp):
    if image is None:
        return 0,0
    orb = cv2.ORB()
    kp = orb.detect(img,None)
    
    kp, des = orb.compute(image, kp)
    img2 = cv2.drawKeypoints(image,kp,color=(0,255,0), flags=0)
    cv2.imshow("image",img2)
    cv2.waitKey(0)
    

    return (kp,des)
