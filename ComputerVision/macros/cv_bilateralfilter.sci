function[img_ret]=cv_bilateralfilter(image, d, sigmaColor, sigmaSpace) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of input arguments");
	end
	if checkimage(image)==0 then
		error("Please input an image as 1rst argument")
	end
	if typeof(d)<> 'constant' & typeof(sigmaSpace)<> 'constant' & typeof(sigmaColor)<> 'constant' then 
		error('input Argument should be constant')
	end
		
    image=converttonumpy(image)
    pyImport BilateralFilter
	img_ret=0;
    img_ret=BilateralFilter.bilateralFilter(image,d,sigmaColor,sigmaSpace)
	
    
    
endfunction 



