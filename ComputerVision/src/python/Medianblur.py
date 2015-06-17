#medianBlur
#kSize should be odd number and greater than 1
#the image depth should be CV_8U, CV_16U, or CV_32F, for larger aperture sizes, it can only be CV_8U.

import cv2

def medianblur(img, kSize):

    if img is None:
        return 0
    #img = cv2.imread(image)
    cv2.Laplacian(img,cv2.CV_8U)

    kSize1 = int(kSize)

    medBlur = cv2.medianBlur(img, kSize1)

    
    return medblur
