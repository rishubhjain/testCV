function[image_ret]=cv_imshow_path(image_path)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyImport imshow_path
	image_ret=0
    image_ret=imshow_path.imshow(path)
	
endfunction