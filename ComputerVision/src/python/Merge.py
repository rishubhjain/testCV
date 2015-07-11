import cv2

#mode 1 is bgr image
#mode 2 is rgb image

def merge(b,g,r,mode):
    if mode==1:
        image=cv2.merge([b,g,r])
    elif mode==2:
        image=cv2.merge([r,g,b])
    return image
