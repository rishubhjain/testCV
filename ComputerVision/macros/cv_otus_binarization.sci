function[img_ret]=cv_otus_binarization(image)
    pyImport Otus_binarization
    img_ret=Otus_binarization.otus(image)
endfunction