pathname=get_absolute_file_path('cv_blur.sci')
pyAddToPath(pathname)

function[img_ret]=cv_blur(image,ksize) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of input arguments");
	end
	
    
    pyImport Blur
    img_ret=Blur.blur(image)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 



