#Shi-Tomasi Corner detection
#using goodFeaturesToTrack function

import cv2
import numpy as np

def goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance):
    
    img = cv2.imread(image)

    maxCorners1 = int(maxCorners)
    qualityLevel1 = float(qualityLevel)
    minDistance1 = int(minDistance)
    
    gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    
    corners = cv2.goodFeaturesToTrack(gray, 25, 0.01, 10)
    corners = np.int0(corners)
    for i in corners:
        x,y = i.ravel()
        cv2.circle(img,(x,y),3,255,-1)

    '''cv2.imshow('corners',img)
    cv2.waitKey(0)'''
    return img
