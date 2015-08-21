function [img_ret]=cv_warpAffine_image(image,x,y)

    [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_warpAffine_image", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_warpAffine_image", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_warpAffine_image", 1));
		
	end
	
	checkconstant(x,"cv_warpAffine_image",2);
	
	checkconstant(y,"cv_warpAffine_image",3);
	
	image=converttonumpy(image)
	pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_image(image,x,y)
endfunction