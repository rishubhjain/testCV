function [image_ret] = cv_rectangle(image,start,end,colour,linetype,thickness) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
			error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_rectangle", 1 ));

	end
	
	if(rhs<>6) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_rectangle", 1 ));

	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_rectangle", 1));
		
	end
	
	checkconstant(start,"cv_rectangle",2);
	
	checkconstant(end,"cv_rectangle",3);
	
	checkconstant(colour,"cv_rectangle",4);
	
	checkconstant(linetype,"cv_rectangle",5);
	
	checkconstant(thickness,"cv_rectangle",6);
	
    image=converttonumpy(image)
    pyImport Rect
    image_ret=Rect.rect(image,start,end,colour,linetype,thickness)

endfunction 