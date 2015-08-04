import cv2
import numpy as np

def checktype(ele):
    if isinstance(ele,list):
        return 1
    elif isinstance(ele,np.ndarray):
        return 2
   

    return
    
