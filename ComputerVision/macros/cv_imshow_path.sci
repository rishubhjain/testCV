pathname=get_absolute_file_path('cv_imshow_path.sci')
pyAddToPath(pathname)

function[image]=cv_imshow_path(image_path)
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyAddToPath(pathname)
	pyImport imshow_path
	
    image=imshow_path.imshow(path)
endfunction