pathname=get_absolute_file_path('cv_filter2D.sci')
pyAddToPath(pathname)

function[img_ret]=cv_filter2D(image,depth) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport filter2D
    img_ret=filter2D.filter(image,depth)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 











