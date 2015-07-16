# cornerHarris function detect the edges in the image... For this prerequisite is that image should be grayscale image and float32 type...

import cv2.cv as cv
import cv2
import numpy as np

def cornerHarris_image(image,blocksize,ksize,k):

   
    gray = cv2.cvtColor(origional_image,cv2.cv.CV_BGR2GRAY,image)
    gray1 = np.float32(gray)
    blocksize=int(blocksize)
    ksize=int(ksize)

    dst = cv2.cornerHarris(gray1,blocksize,ksize,k)

    return dst

