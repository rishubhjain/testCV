from skimage.segmentation import slic,mark_boundaries
from skimage.util import img_as_float
from skimage import io
import matplotlib.pyplot as plt
import argparse
import numpy as np
import cv2


image_test=img_as_float(io.imread("L:\\project\\msrc_objcategimagedatabase_v2\\MSRC_ObjCategImageDatabase_v2\\Images\\3_12_s.bmp"))
image1_test=cv2.imread("L:\\project\\msrc_objcategimagedatabase_v2\\MSRC_ObjCategImageDatabase_v2\\Images\\3_12_s.bmp")
segments= slic(image_test,n_segments=100,sigma=10)
fig=plt.figure("Superpixel")
ax=fig.add_subplot(1,1,1)
ax.imshow(mark_boundaries(image_test,segments))
plt.show()
plt.axis("off")

#plt.show()
for (i, segVal) in enumerate(np.unique(segments)):
  # construct a mask for the segment
  mask = np.zeros(image_test.shape[:2], dtype = "uint8")
  mask[segments == segVal] = 255
  
  superpixel = cv2.bitwise_and(image1_test, image1_test, mask = mask)
  
  #remove extra black part  
  (_, mask1) = cv2.threshold(mask, 1.0, 255.0, cv2.THRESH_BINARY);
  (contours, _) = cv2.findContours(mask1, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

  # sort contours by largest first (if there are more than one)
  contours = sorted(contours, key=lambda contour:len(contour), reverse=True)
  x,y,w,h = cv2.boundingRect(contours[0])
  sp = image1_test[y: y + h, x: x + w]
  
  #cv2.rectangle(image1_test, (x, y), (x+w, y+h), (255,0,0), 2)
  #cv2.imwrite("L:\\project\\msrc_objcategimagedatabase_v2\\MSRC_ObjCategImageDatabase_v2\\superpixel\\"+str(i)+".bmp",sp)
 # cv2.imshow("aS",sp)
  #cv2.waitKey(0)
