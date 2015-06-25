function[img_ret]=cv_threshold_gaussian(image,maxValue)
    pyImport adaptive_threshold
    img_ret=adaptive_threshold.adaptive_thresh_gaussian(image,maxValue)
endfunction