function [img_ret]=cv_warpAffine_path(path)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_path(path)
endfunction