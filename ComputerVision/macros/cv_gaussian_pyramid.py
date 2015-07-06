function[image]=cv_pyrdown(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport pyrdown
    image=pyrdown.pyrDown(image,iteration)
endfunction