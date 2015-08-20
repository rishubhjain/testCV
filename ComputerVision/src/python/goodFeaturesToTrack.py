#Shi-Tomasi Corner detection
#using goodFeaturesToTrack function

import cv2
import numpy as np

def goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance):
    

    maxCorners1 = int(maxCorners)
    qualityLevel1 = float(qualityLevel)
    minDistance1 = int(minDistance)
    
    gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
    
    corners = cv2.goodFeaturesToTrack(gray, maxCorners, qualityLevel, minDistance)
    corners = np.int0(corners)
    
    return corners
