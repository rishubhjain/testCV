function[img_ret]=cv_otsu_binarization(image) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    
    pyImport Otus_binarization
    img_ret=Otsu_binarization.otsu(image)

    
    
endfunction 



