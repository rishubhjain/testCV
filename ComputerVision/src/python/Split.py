#Splitting the image
#cv2.split function returns three iutput B, G, R
import cv2
import numpy as np

def split(image):

  
    B,G,R = cv2.split(image)


    return B,G,R
