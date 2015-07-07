import cv2
import numpy as np


def template_matching(image,template,mode):
    if image is None:
        print "Please check your image"
        return 0

    if template is None:
        print "Please check your template image"
        return 0

    
    if mode==1:
        method=cv2.TM_CCOEFF
    elif mode==2:
        method=cv2.TM_CCOEFF_NORMED
    elif mode==3:
        method=cv2.TM_CCORR
    elif mode==4:
        method=cv2.TM_CCORR_NORMED
    elif mode==5:
        method=cv2.TM_SQDIFF
    elif mode==6:
        method=cv2.TM_SQDIFF_NORMED
    else:
        print "please correct the mode"
        return 0
        
        
    w, h = template.shape[::-1]
    img = image.copy()
    res = cv2.matchTemplate(img,template,method)
    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
    if method in [cv2.TM_SQDIFF, cv2.TM_SQDIFF_NORMED]:
        top_left = min_loc
    else:
        top_left = max_loc
    bottom_right = (top_left[0] + w, top_left[1] + h)

    cv2.rectangle(img,top_left, bottom_right, 255, 2)
    
    return img
