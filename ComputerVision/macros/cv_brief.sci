pathname=get_absolute_file_path('cv_brief.sci')
pyAddToPath(pathname)

function [kp,des] = cv_brief(image,kp) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
	if(channel==3) then
		error("Please input a grayscale Image")
	end
	
	if (lhs<>2) then
		error("this function returns points and descriptor");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport BRIEF
    image_ret=BRIEF.brief(image,kp)
	if(image_ret==0) then
		error("error in Image")
	end
    
    
endfunction 