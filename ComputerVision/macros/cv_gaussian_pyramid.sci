function[image]=cv_gaussian_pyramid(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport pyrdown_gaussian
    image=pyrdown_gaussian.gaussian_pyramid(image,iteration)
endfunction