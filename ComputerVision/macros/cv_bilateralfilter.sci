function[img_ret]=cv_bilateralfilter(image, d, sigmaColor, sigmaSpace) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_bilateralfilter", 1));
	end
	
	if(rhs<>4) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_bilateralfilter", 4));
	end
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_bilateralfilter", 1));
		
	end
	if typeof(d)<> 'constant' then 
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_bilateralfilter", 2));
		
	end
	
	if typeof(sigmaSpace)<> 'constant' then
		
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_bilateralfilter", 4));
	end
	
	if typeof(sigmaColor)<> 'constant' then
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), "cv_bilateralfilter", 3));
	end
	
		
    image=converttonumpy(image)
    pyImport BilateralFilter
	img_ret=0;
    img_ret=BilateralFilter.bilateralFilter(image,d,sigmaColor,sigmaSpace)
	
    
    
endfunction 



