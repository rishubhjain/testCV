import cv2
import numpy as np
import Point

#image should be thresh http://opencv-python-tutroals.readthedocs.org/en/latest/py_tutorials/py_imgproc/py_contours/py_contours_begin/py_contours_begin.html

def findcontours(image,mode,method):
    mode=int(mode)
    
    method=int(method)
    
    if mode==1:
        cvmode= cv2.RETR_EXTERNAL
    elif mode==2:
        cvmode= cv2.RETR_LIST
    elif mode==3:
        cvmode= cv2.RETR_CCOMP
    elif mode==4:
        cvmode=cv2.RETR_TREE

    else:
        print "Please select the correct mode"


    if method==1:
        cvmethod= cv2.CHAIN_APPROX_NONE
    elif method==2:
        cvmethod=cv2.CHAIN_APPROX_SIMPLE
    elif method==3:
        cvmethod=cv2.CHAIN_APPROX_TC89_L1
    else:
        print "Please select correct method"

    
    contours,hierarchy  = cv2.findContours(image.copy(),cvmode,cvmethod)
    
    return contours,hierarchy 
