function[img_ret]=cv_close(image,kernel_type,kernel_size)
   
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_close", 1));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_close", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_close", 1));
	end
	
	if typeof(kernel_size)<> 'constant' then 
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_close", 3));
	end
	
	if typeof(kernel_size)<> 'constant'  then
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_close", 2));
	end
	
	
	image=converttonumpy(image)
	pyImport CLOSE
    img_ret=CLOSE.close(image,kernel_type,kernel_size)

	
endfunction
