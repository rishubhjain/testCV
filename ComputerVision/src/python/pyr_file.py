import cv2.cv as cv
import cv2
import numpy as np

def pyDown_path(path):

    image = cv2.imread(path)
    
    pyrdown_image = image.copy()
    
    for i in range(2):
        pyrdown_image = cv2.pyrDown(pyrdown_image)

    return pyrdown_image

def pyUp_path(path):

    image = cv2.imread(path)
    
    pyrdown_image = image.copy()
   
    for i in range(2):
        pyrdown_image = cv2.pyrDown(pyrdown_image)

\

    return  pyrdown_image


def pyUp_image(img):

    image =img
    
    pyrdown_image = image.copy()
    
    for i in range(2):
        pyrdown_image = cv2.pyrDown(pyrdown_image)
    

    return pyrdown_image

def pyDown_image(img):

    image =img
    
    pyrdown_image = image.copy()
    
    for i in range(2):
        pyrdown_image = cv2.pyrDown(pyrdown_image)
    

    return pyrdown_image
