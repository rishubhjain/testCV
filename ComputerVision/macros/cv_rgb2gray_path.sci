pathname=get_absolute_file_path('cv_rgb2gray_path.sci')
pyAddToPath(pathname)

function [image] = cv_rgb2gray_path(path) 
	pyAddToPath(pathname)
    
    pyImport rgb2gray_file
    image=rgb2gray_file.rgb2gray(path)
    
    
endfunction 
