
function [image_ret] = cv_rgb2gray_image(image) 
	[lhs,rhs]=argn(0)

	
	pyImport cvcheck_channel
	x=cvcheck_channel.check_channel(image);
	if(x==2)
		error("please input a rgb/bgr Image")
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
