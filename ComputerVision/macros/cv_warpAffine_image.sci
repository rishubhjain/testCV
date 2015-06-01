function [img_ret]=cv_warpAffine_image(image)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_image(image)
endfunction