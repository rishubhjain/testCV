#BackgroundSubtractorMOG
#As an argument pass video

import cv2
import numpy as np

def BackgroundSubtractorMOG(video):

    capture = cv2.VideoCapture(video)

    fgbg = cv2.BackgroundSubtractorMOG()

    while(1):
        ret, frame = capture.read()
        fgmask = fgbg.apply(frame)
        cv2.imshow('frame',fgmask)
        k = cv2.waitKey(30) & 0xff
        if k == 27:
            break
    capture.release()
    cv2.destroyAllWindows()
    return
