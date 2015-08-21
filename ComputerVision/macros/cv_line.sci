function [image_ret] = cv_line(image,start,end,colour,linetype,thickness) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
			error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_line", 1 ));

	end
	
	if(rhs<>6) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_line", 1 ));

	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_line", 1));
		
	end
	
	checkconstant(start,"cv_line",2);
	
	checkconstant(end,"cv_line",3);
	
	checkconstant(colour,"cv_line",4);
	
	checkconstant(linetype,"cv_line",5);
	
	checkconstant(thickness,"cv_line",6);
	
    image=converttonumpy(image)
    pyImport Line
    image_ret=Line.line(image,start,end,colour,linetype,thickness)

endfunction 