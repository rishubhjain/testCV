import cv2
import numpy as np
#grayscale image
import cvcheck_channel

def matrix_3d(image):
    if image is None:
        print 'please check the Image'
        return 0

    image1=image.copy()
    image1=image1.reshape(len(image[1][1]),len(image[1]),len(image))
    mat0=np.asmatrix(image1[0])
    mat1=np.asmatrix(image1[1])
    mat2=np.asmatrix(image1[2])
    return mat0,mat1,mat2
    
    

def matrix_2d(image):
    if image is None:
        print 'please check the Image'
        return 0
    mat1=np.asmatrix(image)
    return mat1


def matrix(image):
    if image is None:
        print 'please check the Image'
        return 0

    if cvcheck_channel.check_channel()==2:
        mat=matrix_2d(image)
        print 'Grayscale Image'
        return mat1,0,0
    else:
        mat0,mat1,mat2=matrix_3d(image)
        print 'RGB  image'
        return mat0,mat1,mat2

    
        







