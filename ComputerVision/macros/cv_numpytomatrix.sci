
function[img_ret]=numpytomatrix(Image) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of input arguments");
	end
	
    
    pyImport GaussianFilter
    img_ret=GaussianFilter.gaussianFilter(img,kernel_type,kernel_size, sigmaX, sigmaY)

    
endfunction 



