import cv2
def distancetransform(image,mode,masksize):
    dist = cv2.distanceTransform(image, cv2.cv.CV_DIST_L2, cv2.cv.CV_DIST_MASK_PRECISE)
    
