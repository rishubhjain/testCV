function[img_ret]=bilateralFilter(img, d, sigmaColor, sigmaSpace) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of input arguments");
	end
	
    
    pyImport BilateralFilter
	img_ret=0;
    img_ret=BilateralFilter.bilateralFilter(img,d,sigmaColor,sigmaSpace)
	
    
    
endfunction 



