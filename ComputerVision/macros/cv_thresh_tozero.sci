function[img_ret]=cv_thresh_tozero(image)
    pyImport simple_thresholding
    img_ret=simple_thresholding.thresh_tozero(image)
endfunction