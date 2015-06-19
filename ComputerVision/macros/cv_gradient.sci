function[img_ret]=cv_gradient(image,kernal_type,kernal_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	img_ret=0;
	pyImport Gradient
    img_ret=Gradient.gradient(image,kernal_type,kernal_size)
endfunction