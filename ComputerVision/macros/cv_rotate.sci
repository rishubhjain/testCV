function [image_ret] = cv_rotate(image,angle) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_rotate", 1));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_rotate", 2));
	end
	
	
	image=converttonumpy(image);
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_rotate", 1));
		
	end
	
	checkconstant(angle,"cv_rotate",2);
	
	
    image_ret=0
    pyImport Rotate
    image_ret=Rotate.rotate1(image,angle)

endfunction 