function[image]=cv_cannyedge(image,thresh1,thresh2)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_cannyedge", 1));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_cannyedge", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_cannyedge", 1));
	end
	
	if typeof(thresh1)<> 'constant' then 
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_cannyedge", 2));
		
	end
	
	if typeof(thresh2)<> 'constant' then
		
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_cannyedge", 3));
	end
	
	
	image=converttonumpy(image)
	pyImport Cannyedge
    image=Cannyedge.cannyedge(image,thresh1,thresh2)
endfunction