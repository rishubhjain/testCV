pathname=get_absolute_file_path('cv_rotate.sci')
pyAddToPath(pathname)

function [image_ret] = cv_rotate(image,angle) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport rotate
    image_ret=rotate.rotate1(image,angle)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 