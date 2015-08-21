function[image]=cv_laplace(image,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_laplace", 1 ));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_laplace", 2 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_laplace", 1));
		
	end
	
	checkconstant(mode,"cv_laplace",2);
	
	
	image=converttonumpy(image)
	pyImport Laplace
    image=Laplace.laplace(image,mode)
endfunction