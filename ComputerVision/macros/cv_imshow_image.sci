pathname=get_absolute_file_path('cv_imshow_image.sci')
pyAddToPath(pathname)

function[image]=cv_imshow_image(image)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	pyAddToPath(pathname)
	pyImport imshow_image
	
    image=imshow_image.imshow(path)
endfunction