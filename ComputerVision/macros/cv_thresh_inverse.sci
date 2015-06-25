function[img_ret]=cv_thresh_binary_inverse(image)
    pyImport simple_thresholding
    img_ret=simple_thresholding.thresh_binary_inv(image)
endfunction