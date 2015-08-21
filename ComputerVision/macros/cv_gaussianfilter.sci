
function[img_ret]=cv_gaussianfilter(image, kernel_type,kernel_size, sigmaX, sigmaY) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_gaussianfilter", 1 ));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_gaussianfilter", 5));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_gaussianfilter", 1));
	end
	
	checkconstant(kernel_type,"cv_gaussianfilter",2);
	
	checkconstant(kernel_size,"cv_gaussianfilter",3);
	
	checkconstant(sigmaX,"cv_gaussianfilter",4);
	
	checkconstant(sigmaY,"cv_gaussianfilter",5);
	
    image=converttonumpy(image)
    pyImport GaussianFilter
    img_ret=GaussianFilter.gaussianFilter(image,kernel_type,kernel_size, sigmaX, sigmaY)

    
endfunction 



