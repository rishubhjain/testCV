function[image]=cv_pyrup(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport pyrup
    image=pyrup.pyrUp(image,iteration)
endfunction