function[image]=cv_grabcut(image,mask,bgdModel,fgdModel,rect,iterations,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_grabcut", 1 ));
	end
	
	if(rhs<>7) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_grabcut", 7 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_grabcut", 1));
	end
	
	
	
	image=converttonumpy(image)
	pyImport Grabcut
    image=Grabcut.grabcut(image,mask,bgdModel,fgdModel,rect,iterations,mode)
endfunction