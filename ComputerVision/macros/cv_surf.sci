pathname=get_absolute_file_path('cv_surf.sci')
pyAddToPath(pathname)

function [image_ret] = cv_surf(image,hessianThreshold) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
	if(channel==3) then
		error("Please input a grayscale Image")
	end
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport surf
    image_ret=surf.SURF(image,hessianThreshold)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 