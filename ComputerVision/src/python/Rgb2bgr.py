import cv2

def rgb2bgr(image):
        b,g,r = cv2.split(image)
        bgr_img = cv2.merge([b,g,r])
        return bgr_img
