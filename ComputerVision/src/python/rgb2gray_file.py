import cv2
import numpy as np

def rgb2gray(path):

   
    
    imgread = cv2.imread (path)
    cv2.imshow ('Origional Image',imgread)
    
    RGB2GRAY = cv2.cvtColor(imgread,cv2.COLOR_RGB2GRAY)
    #cv2.imshow ('Converted to rgb2gray',RGB2GRAY)
    #cv2.waitKey(0)
    

    return RGB2GRAY



