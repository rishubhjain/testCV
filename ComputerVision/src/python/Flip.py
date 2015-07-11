#flipping the image
#Verticle flipping of the image (flipcode == 0)
#horizontal flipping of the image (flipcode > 0)
#Simultaneos verticle and horizontal flipping of the image (flipcode < 0)
#Reversing the order of point arrays (flipCode > 0 or flipCode == 0).

import cv2
import numpy as np

def flip(image, flipcode):

    img = cv2.imread(image)
    flipcode = int(flipcode)
    flip = cv2.flip(img, flipcode)

    cv2.imshow("flip", flip)
    cv2.waitKey(0)
    return
