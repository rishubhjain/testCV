# crop an image

import cv2
import numpy as np

def crop(image, height, width):

    img = cv2.imread(image)

    ''''height1 = int(height[0])
    height2 = int(height[1])

    height = (height1, height2)

    width1 = int(width[0])
    width2 = int(width[1])

    width = (width1, width2)'''

    crop = img[30:120,240:335]

    #crop = img[height, width]

    cv2.imshow("crop", crop)

    cv2.waitKey(0)

    return
