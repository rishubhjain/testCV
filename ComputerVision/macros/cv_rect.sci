function [image_ret] = cv_retangle(image,start,end,color,linetype,thickness) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>6) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport Rect
    image_ret=Rect.rect(image,start,end,color,linetype,thickness)

endfunction 