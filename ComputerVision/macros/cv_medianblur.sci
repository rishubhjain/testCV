
function[img_ret]=cv_medianblur(image,kernel_type,kernel_size) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_medianblur", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_medianblur", 3 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_medianblur", 1));
		
	end
	
	checkconstant(kernel_type,"cv_medianblur",2);
	
	checkconstant(kernel_size,"cv_medianblur",3);
	
    image=converttonumpy(image)
    pyImport Medianblur
    img_ret=Medianblur.medianblur(image,kernel_type,kernel_size)

    
endfunction 



