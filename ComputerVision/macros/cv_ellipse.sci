function [image_ret] = cv_ellipse(image,center, axes, angle, startAngle, endAngle,colour,thickness,lineType) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>9) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport Ellipse
    image_ret=Ellipse.ellipse(image,center, axes, angle, startAngle, endAngle,colour,thickness,lineType)

endfunction 