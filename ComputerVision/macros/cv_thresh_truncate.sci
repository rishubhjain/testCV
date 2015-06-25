function[img_ret]=cv_thresh_truncate(image)
    pyImport simple_thresholding
    img_ret=simple_thresholding.thresh_trunc(image)
endfunction