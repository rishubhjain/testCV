function[img_ret]=cv_filter2D(image,depth) 
	[lhs,rhs]=argn(0)

	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport filter2D
    img_ret=filter2D.filter(image,depth)

endfunction 











