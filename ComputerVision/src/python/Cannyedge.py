import cv2
import numpy as np

def cannyedge(image,thresh1,thresh2):
    thresh1=int(thresh1)
    thresh2=int(thresh2)
    edges = cv2.Canny(image,thresh1,thresh2)
    return edges
    
