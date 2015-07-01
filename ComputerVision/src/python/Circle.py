import cv2
import numpy as np
import Point

#radius can be float 
def circle(img,center,radius,color,linetype,thickness):
	center=Point.point_int(center)
    #radius=int(radius)
    color=Point.point_int(color)
	thickness=int(thickness)
    if linetype == 8 :
        
		cv2.circle(img, center, radius,color, thickness,lineType==8)
    elif linetype == 4 :
        
		cv2.circle(img, center, radius,color, thickness,lineType==4)
    else:
        
		cv2.circle(img, center, radius,color, thickness,lineType=CV_AA)
   
    return img
