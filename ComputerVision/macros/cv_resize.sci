function [resize_image] = cv_resize(image, height,width,interpolation_unit) 
	[lhs,rhs]=argn(0)
	
	if(lhs<>1) then
	
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_resize", 1));
	end

	if(rhs<>4) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_resize", 4));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_resize", 1));
		
	end
	
	checkconstant(height,"cv_resize",2);
	
	checkconstant(width,"cv_resize",3);
	
	checkconstant(interpolation_unit,"cv_resize",4);
	
    image=converttonumpy(image)
    pyImport Resize
    resize_image=Resize.resize1(image,height,width,interpolation_unit)
  
endfunction 
