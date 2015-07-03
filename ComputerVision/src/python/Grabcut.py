import numpy as np
import cv2
import Point

def grabcut(image,mask,bgdModel,fgdModel,rect,iterations,mode):
    iterations=int(iterations)

    rect = Point.point_int(rect)
    if mode ==1:
        cv2.grabCut(image,mask,rect,bgdModel,fgdModel,iterations,cv2.GC_INIT_WITH_RECT)

        mask2 = np.where((mask==2)|(mask==0),0,1).astype('uint8')
        image = image*mask2[:,:,np.newaxis]
    elif mode==2:
        newmask=mask
        mask[newmask == 0] = 0
        mask[newmask == 255] = 1
        mask, bgdModel, fgdModel = cv2.grabCut(image,mask,None,bgdModel,fgdModel,iterations,cv2.GC_INIT_WITH_MASK)
        mask = np.where((mask==2)|(mask==0),0,1).astype('uint8')
        image = image*mask[:,:,np.newaxis]

    else:
        print "Please check the mode"
    return image
    
