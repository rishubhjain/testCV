pathname=get_absolute_file_path('cv_resize.sci')
pyAddToPath(pathname)

function [resize_image] = cv_resize(image, height,width) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	
    
    pyImport resize
    resize_image=resize.resize1(image,height,width)
	if (resize_image==0) then	
		error("wrong image or parameters")
		resize_image=0
		
	end
	
		
    
    
endfunction 
