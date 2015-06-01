function [img_ret]=cv_warpAffine_image(image,x,y)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_image(image,x,y)
endfunction