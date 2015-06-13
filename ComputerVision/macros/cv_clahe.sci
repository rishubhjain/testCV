pathname=get_absolute_file_path('cv_clahe.sci')
pyAddToPath(pathname)

function [image_ret] = cv_clahe(image,clipLimit, titleGridSize) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	
    
    pyImport clahe
    image_ret=clahe.CLAHE(image,clipLimit, titleGridSize)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 