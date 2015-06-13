pathname=get_absolute_file_path('cv_bilateralfilter.sci')
pyAddToPath(pathname)

function[img_ret]=bilateralFilter(img, d, sigmaColor, sigmaSpace) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of input arguments");
	end
	
    
    pyImport BilateralFilter
    img_ret=BilateralFilter.bilateralFilter(img,d,sigmaColor,sigmaSpace)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 



