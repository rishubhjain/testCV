
function[img_ret]=gaussianFilter(img, ksize, sigmaX, sigmaY) 
	[lhs,rhs]=argn(0)
	pyAddToPath(pathname)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of input arguments");
	end
	
    
    pyImport GaussianFilter
    img_ret=GaussianFilter.gaussianFilter(img, ksize, sigmaX, sigmaY)

    
endfunction 



