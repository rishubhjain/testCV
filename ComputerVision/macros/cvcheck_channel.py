import cv2
import numpy as np

def check_channel(image):
    if len(image.shape)==2:
        x=0
    elif len(image.shape)==3:
        x=1
    
   
    return x
