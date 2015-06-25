# SURF (Speeded-Up Robust Features)

import cv2
import numpy as np

def SURF(image, hessianThreshHold,Upright):
    if image is None:
        print 'Error in input Image'
        return 0,0
    
    
    hessianThreshHold1 = int(hessianThreshHold)
    
    surf = cv2.SURF(hessianThreshHold1)
    surf.upright = Upright
    kp, des = surf.detectAndCompute(image,None)

    img2 = cv2.drawKeypoints(image,kp,None,(255,0,0),4)
    cv2.imshow("image",img2)
    cv2.waitKey(0)
	
    return kp,des
