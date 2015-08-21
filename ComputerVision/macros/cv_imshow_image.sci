function[]=cv_imshow_image(image)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_imshow_image", 1 ));
	end
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_imshow_image", 1));
	end
	image=converttonumpy(image);
	
	pyImport imshow_image
	
    imshow_image.imshow(image)

endfunction