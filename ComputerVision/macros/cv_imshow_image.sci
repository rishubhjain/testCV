pathname=get_absolute_file_path('cv_imshow_image.sci')
pyAddToPath(pathname)

function[image]=cv_imshow_image(image)
	pyAddToPath(pathname)
	pyImport imshow_image
	
    image=imshow_image.imshow(path)
endfunction