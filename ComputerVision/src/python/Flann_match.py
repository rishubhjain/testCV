import numpy as np
import cv2

def flann_match(des1,des2,num_trees,num_checks,k):
    num_trees=int(num_trees)
    num_checks=int(num_checks)
    FLANN_INDEX_KDTREE = 0
    k=int(k)
    index_params = dict(algorithm = FLANN_INDEX_KDTREE, trees = num_trees)
    search_params = dict(checks = num_checks)
    
    flann = cv2.FlannBasedMatcher(index_params, search_params)

    matches = flann(des1,des2,k)

    return matches
