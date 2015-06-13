# bilateral filter... used for removing noise from the image and preserving the edges.
'''src – Source 8-bit or floating-point, 1-channel or 3-channel image.
dst – Destination image of the same size and type as src .
d – Diameter of each pixel neighborhood that is used during filtering. If it is non-positive, it is computed from sigmaSpace .
sigmaColor – Filter sigma in the color space. A larger value of the parameter means that farther colors within the pixel neighborhood (see sigmaSpace ) will be mixed together, resulting in larger areas of semi-equal color.
sigmaSpace – Filter sigma in the coordinate space. A larger value of the parameter means that farther pixels will influence each other as long as their colors are close enough (see sigmaColor ). When d>0 , it specifies the neighborhood size regardless of sigmaSpace . Otherwise, d is proportional to sigmaSpace .'''

import cv2
import numpy as np

def bilateralFilter(img, d, sigmaColor, sigmaSpace):

    if img is None:
        return 0

    d = int(d)
    sigmaColor = int(sigmaColor)
    sigmaSpace = int(sigmaSpace)

    cv2.bilateralFilter(img, d, sigmaColor, sigmaSpace)
    

    return img
