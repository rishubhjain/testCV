function[img_ret]=cv_threshold_mean(image,maxValue)
    pyImport adaptive_threshold
    img_ret=adaptive_threshold.adaptive_thresh_mean(image,maxValue)
endfunction