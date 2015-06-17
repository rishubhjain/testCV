import cv2
import numpy as np

def cv_write(path,image):

   if image is None:
       print 'Error in input Image'
       return 0
    
    cv2.imwrite(path,image)
    
    

    return 



