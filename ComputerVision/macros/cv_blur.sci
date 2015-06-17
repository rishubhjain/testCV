//ksize->kernel size
function[img_ret]=cv_blur(image,ksize) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of input arguments");
	end
	
    img_ret=0
    pyImport Blur
    img_ret=Blur.blur(image)    
    
endfunction 



