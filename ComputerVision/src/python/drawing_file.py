# This file contains the functions related to drawing the circls, lines, rectangle and putting text on the image

import cv2
import numpy as np

w = 400
# Create a black image
img1 = np.zeros((512,512,3), np.uint8)


def myLine(img,start,end,color1):
    thickness = -1
    lineType = 8
    color_x=int(color1[0])
    color_y=int(color1[1])
    color_z=int(color1[2])
    start=int(start)
    end=int(end)
    color=(color_x,color_y,color_z)
    cv2.line(img,start,end,color,thickness,lineType)
   
    return img

def myRect(img,start,end,color1):
    thickness = -1
    lineType = 8
    color_x=int(color1[0])
    color_y=int(color1[1])
    color_z=int(color1[2])
    color=(color_x,color_y,color_z)
    start=int(start)
    end=int(end)
    cv2.rectangle(img, start,end,color,thickness,lineType)
    return img


def myCircle(img,center1,radius,color1):
    thickness = 1
    lineType = 8
    center_x=int(center1[0])
    center_y=int(center1[1])
    center=(center_x,center_y)
    radius=int(radius)
    color_x=int(color1[0])
    color_y=int(color1[1])
    color_z=int(color1[2])
    color=(color_x,color_y,color_z)
    img=cv2.imread('a.png')
    color=(0,0,255)
    cv2.circle(img, center, radius,color, thickness,lineType)
    
    return img

def myEllipse(img,cent, axes1, angle, startAngle, endAngle,color1):

    thickness = 2
    lineType = 8
    center_x=int(cent[0])
    center_y=int(cent[1])
    center=(center_x,center_y)
    color_x=int(color1[0])
    color_y=int(color1[1])
    color_z=int(color1[2])
    color=(color_x,color_y,color_z)
    axes_x=int(axes1[0])
    axes_y=int(axes1[1])
    axes=(axes_x,axes_y)
    cv2.ellipse(img, center,axes,angle, startAngle, endAngle,color,thickness,lineType)
    
    return img

#left
def myPolyline(img):
    
    
    pts = np.array([[20,35],[20,30],[70,20],[50,10]], np.int32)
    pts = pts.reshape((-1,1,2))
    cv2.polylines(img,[pts],False,(0,255,255))

    return img


def myputText(img,text,org1,color1):

    thickness = 2
    lineType = 6
    org_x=int(org1[0])
    org_y=int(org1[1])
    org=(org_x,org_y)
    color_x=int(color1[0])
    color_y=int(color1[1])
    color_z=int(color1[2])
    color=(color_x,color_y,color_z)
    font = cv2.FONT_HERSHEY_SIMPLEX
    cv2.putText(img,text,org,font,2,color, thickness,lineType)
   
    return img

















                
