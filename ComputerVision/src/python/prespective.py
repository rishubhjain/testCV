import cv2
import numpy as np

def prespective_trans(image,x1,x2,x3,x4,y1,y2,y3,y4):
    #left with testing this function
    if image is None
        return 0

    
    rows,cols,ch = image.shape
    pts1 = np.float32([x1,x2,x3,x4])
    pts2 = np.float32([y1,y2,y3,y4])

    M = cv2.getPerspectiveTransform(pts1,pts2)

    dst = cv2.warpPerspective(img,M,(300,300))

    if dst is None
        return 0

    return dst
