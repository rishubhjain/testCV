import cv2
import numpy as np
import Point

#angle can be float
def ellipse(img,center, axes, angle, startAngle, endAngle,color,thickness,lineType):
	center=Point.point_int(center)
    color=Point.point_int(color)	
    axes=Point.point_int(axes)
	angle=int(angle)
	startAngle=int(startAngle)
	endAngle=int(endAngle)
	thickness=int(thickness)
	
	  if linetype == 8 :
        
		cv2.ellipse(img, center,axes,angle, startAngle, endAngle,color,thickness,lineType=CV_AA)
    elif linetype == 4 :
        
		cv2.ellipse(img, center,axes,angle, startAngle, endAngle,color,thickness,lineType=CV_AA)
    else:
        
		cv2.ellipse(img, center,axes,angle, startAngle, endAngle,color,thickness,lineType=CV_AA)
    
    return img