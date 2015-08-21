function[image]=cv_gaussian_pyramid(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_gaussian_pyramid", 1 ));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_gaussian_pyramid", 2 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_gaussian_pyramid", 1));
	end
	
	checkconstant(iteration,"cv_gaussian_pyramid",2);
	image=converttonumpy(image)
	pyImport pyrdown_gaussian
    image=pyrdown_gaussian.gaussian_pyramid(image,iteration)
endfunction