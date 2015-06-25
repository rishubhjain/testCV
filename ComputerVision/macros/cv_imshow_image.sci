function[]=cv_imshow_image(image)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image);
	
	pyImport imshow_image
	
    imshow_image.imshow(image)

endfunction