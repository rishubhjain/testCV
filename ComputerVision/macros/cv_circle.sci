function [image_ret] = cv_circle(image,center,radius,colour,linetype,thickness) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_circle", 1));
	end
	
	if(rhs<>6) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_circle", 6));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_circle", 1));
	end
	checkconstant(center,"cv_circle",2)
	checkconstant(radius,"cv_circle",3)
	checkconstant(linetype,"cv_circle",5)
	checkconstant(thinkness,"cv_circle",6)
	checkconstant(colour,"cv_circle",4)
	
	
	image=converttonumpy(image)
    pyImport Circle
    image_ret=Circle.circle(image,center,radius,colour,linetype,thickness)

endfunction 