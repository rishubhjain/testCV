function[image]=cv_pyrup(image,iteration)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_pyrup", 1 ));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_pyrup", 2 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_pyrup", 1));
		
	end
	
	checkconstant(iteration,"cv_pyrup",2);
	
	image=converttonumpy(image)
	pyImport pyrup
    image=pyrup.pyrUp(image,iteration)
endfunction