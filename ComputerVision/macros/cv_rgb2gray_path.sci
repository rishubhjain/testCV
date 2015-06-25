function [image_ret] = cv_rgb2gray_path(path) 
	[lhs,rhs]=argn(0)
	image=cv_imread_path(path,1)
	image=converttonumpy(image)
	channel=cv_check_channel(image)
	if (channel==2) then 
		error("Please input an rgb/bgr image")
	end
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
    
    pyImport rgb2gray_file
    image_ret=rgb2gray_file.rgb2gray(path)
	image_ret=0

    
endfunction 
