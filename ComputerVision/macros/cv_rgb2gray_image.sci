function [image_ret] = cv_rgb2gray_image(image) 
	[lhs,rhs]=argn(0)
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
    pyImport rgb2gray_image
    image_ret=rgb2gray_image.rgb2gray(image)
    
    
endfunction 
