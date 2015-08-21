function[image]=cv_pyrdown(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_pyrdown", 1 ));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_pyrdown", 2 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_pyrdown", 1));
		
	end
	
	checkconstant(iteration,"cv_pyrdown",2);
	
	image=converttonumpy(image)
	pyImport pyrdown
    image=pyrdown.pyrDown(image,iteration)
endfunction