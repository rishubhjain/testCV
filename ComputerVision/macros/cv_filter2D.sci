function[img_ret]=cv_filter2D(image,depth,kernel_type,kernel_size) 
	[lhs,rhs]=argn(0)

	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport filter2D
    img_ret=filter2D.filter(image,depth,kernel_type,kernel_size)

endfunction 











