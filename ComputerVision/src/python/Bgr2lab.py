#BGR2LAB

import cv2

def BGR2LAB(image):
    img = cv2.imread(image)

    lab = cv2.cvtColor(img,cv2.COLOR_BGR2LAB)


    return lab



def LAB2BGR(image):
    img = cv2.imread(image)

    bgr = cv2.cvtColor(img,cv2.COLOR_LAB2BGR)

   
    return bgr
