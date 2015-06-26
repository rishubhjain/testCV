import cv2
import numpy as np
import cvcheck_channel
def warpAffine_path(path,x,y):

    image= cv2.imread(path)
    if image is None:
        print "Wrong image"
        return 0
    x=int(x)
    y=int(y)
    if cvcheck_channel.check_channel(image)==2:
        rows,cols = image.shape
    elif cvcheck_channel.check_channel(image)==3:
        rows,cols,depth = image.shape
    X = np.float32([[1,0,x],[0,1,y]])

    trasformation = cv2.warpAffine(image, X, (cols,rows))

    return trasformation




def warpAffine_image(image,x,y):
    
    x=int(x)
    y=int(y)
    if image is None:
        print "Wrong image"
        return 0
    if cvcheck_channel.check_channel(image)==2:
        rows,cols = image.shape
    elif cvcheck_channel.check_channel(image)==3:
        rows,cols,depth = image.shape
    
    X = np.float32([[1,0,x],[0,1,y]])

    trasformation = cv2.warpAffine(image, X, (cols,rows))


    return trasformation
