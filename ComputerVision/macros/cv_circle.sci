function [image_ret] = cv_circle(image,center,radius,colour,linetype,thickness) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>6) then
		error("invalid number of arguments");
	end
	
	image=converttonumpy(image)
    pyImport Circle
    image_ret=Circle.circle(image,center,radius,colour,linetype,thickness)

endfunction 