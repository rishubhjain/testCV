# resize

import cv2
import numpy as np
import cvcheck_channel

def resize1(image, height, width, interpolation_unit):

    
    height = float(height)
    width = int(width)

    if cvcheck_channel.check_channel(image)==2:
        rows,cols = image.shape
    elif cvcheck_channel.check_channel(image)==3:
        rows,cols,depth = image.shape

    r = height/cols

    
    dim = (width, int(rows * r))

    interpolation_unit=int(interpolation_unit)
    #dim=(2*100, 2*100)

    if interpolation_unit==1:
        
        resized = cv2.resize(image, dim, interpolation=cv2.INTER_AREA)
    elif interpolation_unit==2:
        
        resized = cv2.resize(image, dim, interpolation=cv2.INTER_CUBIC)
    elif interpolation_unit==3:
        
        resized = cv2.resize(image, dim,interpolation=cv2.INTER_LINEAR)
    
    
    
    return resized
