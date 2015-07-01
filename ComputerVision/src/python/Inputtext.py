import cv2
import numpy as np
import Point
#change font
#radius can be float 
def myputText(img,text,font,scale,origin,color,thickness,lineType):

    thickness=int(thickness)
    scale=int(scale)
    color=Point.point_int(color)
	font = cv2.FONT_HERSHEY_SIMPLEX
	if linetype == 8 :
        
		cv2.putText(img,text,org,font,scale,color, thickness,lineType=8)
    elif linetype == 4 :
        
		cv2.putText(img,text,org,font,scale,color, thickness,lineType=4)
    else:
        
		cv2.putText(img,text,org,font,scale,color, thickness,lineType=CV_AA)
    
   
    return img
