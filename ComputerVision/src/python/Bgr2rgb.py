import cv2

def bgr2rgb(image):
        b,g,r = cv2.split(image)
        rgb_img = cv2.merge([r,g,b])
        return rgb_img
