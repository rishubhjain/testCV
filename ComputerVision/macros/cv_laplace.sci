function[image]=cv_laplace(image,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport Laplace
    image=Laplace.laplace(image,mode)
endfunction