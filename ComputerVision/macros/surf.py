# SURF (Speeded-Up Robust Features)

import cv2
import numpy as np

def SURF(image, hessianThreshHold):

    
    hessianThreshHold1 = int(hessianThreshHold)
    
    surf = cv2.SURF(hessianThreshHold1)
    
    kp, des = surf.detectAndCompute(image,None)

    img2 = cv2.drawKeypoints(image,kp,None,(255,0,0),4)

    if img2 is None:
        return 0
    
    return img2
