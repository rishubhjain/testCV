pathname=get_absolute_file_path('cv_imshow_path.sci')
pyAddToPath(pathname)

function[image]=cv_imshow_path(image_path)
	pyAddToPath(pathname)
	pyImport imshow_path
	
    image=imshow_path.imshow(path)
endfunction