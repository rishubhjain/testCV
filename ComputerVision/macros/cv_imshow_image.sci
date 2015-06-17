function[image]=cv_imshow_image(image)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyImport imshow_image
	
    image=imshow_image.imshow(path)
endfunction