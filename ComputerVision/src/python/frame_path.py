import numpy as np
import cv2

def frame_path(video_path):
    cap = cv2.VideoCapture(video_path)
    ret ,frame = cap.read()
    return ret,frame
    
