pathname=get_absolute_file_path('cv_imread_path.sci')
pyAddToPath(pathname)

function[image]=cv_imread_path(image_path)
	pyAddToPath(pathname)
	pyImport imread_path
	
    image=imread_path.imread(image_path)
endfunction