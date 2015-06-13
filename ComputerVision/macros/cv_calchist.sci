pathname=get_absolute_file_path('cv_calchist.sci')
pyAddToPath(pathname)

function [image_ret] = cv_calchist(image,channels,mask,histsize,ranges) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport calchist
    image_ret=calchist.histogram2d(image,channels,mask,histsize,ranges)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 