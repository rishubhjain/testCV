import numpy as np
import cv2

def type1(image):
    print type(image)

    #print len(image)
    #image1=np.asmatrix(image)
    #print type(image1)
    cv2.imshow("",image)
    cv2.waitKey(0)
    return
