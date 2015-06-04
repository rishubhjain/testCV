pathname=get_absolute_file_path('cv_surf.sci')
pyAddToPath(pathname)

function [kp,des] = cv_surf(image,hessianThreshold) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
	if(channel==3) then
		error("Please input a grayscale Image")
	end
	
	if (lhs<>2) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport surf
    [kp,des]=surf.SURF(image,hessianThreshold);
	if(kp==0) then
		error("Please check input Image")
	end
	
    
    
endfunction 