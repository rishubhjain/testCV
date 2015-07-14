# cornerHarris function detect the edges in the image... For this prerequisite is that image should be grayscale image and float32 type...

import cv2.cv as cv
import cv2
import numpy as np

def cornerHarris_path(path):

    origional_image = cv2.imread(path)
    #print origional_image.shape
    a = origional_image 
    gray = cv2.cvtColor(origional_image,cv2.cv.CV_BGR2GRAY,a)
    gray1 = np.float32(gray)

    dst = cv2.cornerHarris(gray1,blocksize,ksize,k)

    return dst





def cornerHarris_image(image,blocksize,ksize,k):

    origional_image = image
    #print origional_image.shape
    a = origional_image 
    gray = cv2.cvtColor(origional_image,cv2.cv.CV_BGR2GRAY,a)
    gray1 = np.float32(gray)
    blocksize=int(blocksize)
    ksize=int(ksize)

    dst = cv2.cornerHarris(gray1,blocksize,ksize,k)

    return dst

