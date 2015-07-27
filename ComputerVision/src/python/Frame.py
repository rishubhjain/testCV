import numpy as np
import cv2

def frame_camera():
    cap = cv2.VideoCapture(0)
    ret ,frame = cap.read()
    return ret,frame
    
