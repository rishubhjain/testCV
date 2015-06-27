
function[img_ret]=cv_blur(image,kernel_type,kernel_size) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
	error("this function returns an image");
	end
	
	if(rhs<>3) then
	error("invalid number of input arguments");
	end
	image=converttonumpy(image)
    img_ret=0
    pyImport Blur
    img_ret=Blur.Blur(image,kernel_type,kernel_size)    
    
endfunction 



