import cv2
import numpy as np
def goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance):
    maxCorners=int(maxCorners)
    minDistance=int(minDistance)
    
    corners = cv2.goodFeaturesToTrack(image,maxCorners,qualityLevel,minDistance)
    corners = np.int0(corners)
    return corners
    
