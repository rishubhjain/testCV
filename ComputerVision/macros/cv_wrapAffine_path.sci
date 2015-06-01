function [img_ret]=cv_warpAffine_path(path,x,y)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_path(path,x,y)
endfunction