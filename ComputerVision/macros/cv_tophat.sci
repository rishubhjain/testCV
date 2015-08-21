function[img_ret]=cv_tophat(image,kernel_type,kernel_size)
   
   
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_tophat", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_tophat", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_tophat", 1));
		
	end
	
	checkconstant(kernel_type,"cv_tophat",2);
	
	checkconstant(kernel_size,"cv_tophat",3);
	
	img_ret=0;
	image=converttonumpy(image)
	pyImport Tophat
    img_ret=Tophat.tophat(image,kernel_type,kernel_size)
endfunction