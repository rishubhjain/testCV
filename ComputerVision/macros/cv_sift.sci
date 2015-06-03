pathname=get_absolute_file_path('cv_sift.sci')
pyAddToPath(pathname)

function [image_ret] = cv_sift(image) 
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
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    
    pyImport sift
    image_ret=sift.SIFT(image)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 