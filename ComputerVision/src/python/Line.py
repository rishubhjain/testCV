
import cv2
import numpy as np
import Point

def line(img,start,end,color,linetype,thickness):
    thickness=int(thickness)
    
        
    color=Point.point_int(color)
    start=Point.point_int(start)
    end=Point.point_int(end)
    if linetype == 8 :
        cv2.line(img,start,end,color,thickness,lineType=8)
    elif linetype == 4 :
        cv2.line(img,start,end,color,thickness,lineType=4)
    else:
        cv2.line(img,start,end,color,thickness,lineType=CV_AA)
   
    return img
