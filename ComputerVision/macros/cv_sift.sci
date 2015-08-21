function [kp] = cv_sift(image) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_sift", 1));
	end
	
	if(rhs<>1) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_sift", 1));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_sift", 1));
		
	end
	
	image=converttonumpy(image);
    image_ret=0
    pyImport Sift
    kp=Sift.SIFT(image)

endfunction 