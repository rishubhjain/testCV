
function[img_ret]=cv_medianblur(image,ksize) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of input arguments");
	end
	
    
    pyImport MedianBlur
    img_ret=MedianBlur.medianblur(image,ksize)

    
endfunction 



