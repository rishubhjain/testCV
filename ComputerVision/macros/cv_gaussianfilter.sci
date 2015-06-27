
function[img_ret]=cv_gaussianfilter(image, kernel_type,kernel_size, sigmaX, sigmaY) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>5) then
		error("invalid number of input arguments");
	end
	
    image=converttonumpy(image)
    pyImport GaussianFilter
    img_ret=GaussianFilter.gaussianFilter(image,kernel_type,kernel_size, sigmaX, sigmaY)

    
endfunction 



