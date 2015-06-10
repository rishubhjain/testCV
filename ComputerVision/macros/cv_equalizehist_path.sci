pathname=get_absolute_file_path('cv_equalizehist_path.sci')
pyAddToPath(pathname)

function [image_ret] = cv_equalizehist_path(path) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    
    pyImport equalizeHist_file
    image_ret=equalizeHist_file.equalizeHist_path(path)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 