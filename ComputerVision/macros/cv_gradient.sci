function[img_ret]=cv_gradient(image,kernal_type,kernal_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_gradient", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_gradient", 3 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_gradient", 1));
	end
	
	checkconstant(kernel_type,"cv_gradient",2);
	
	checkconstant(kernel_size,"cv_gradient",3);
	
	
	img_ret=0;
	image=converttonumpy(image)
	pyImport Gradient
    img_ret=Gradient.gradient(image,kernal_type,kernal_size)
endfunction