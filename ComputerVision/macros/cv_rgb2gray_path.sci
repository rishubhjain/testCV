pathname=get_absolute_file_path('cv_rgb2gray_path.sci')
pyAddToPath(pathname)

function [image] = cv_rgb2gray_path(path) 
	[lhs,rhs]=argn(0)
	
  
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	pyAddToPath(pathname)
    
    pyImport rgb2gray_file
    image=rgb2gray_file.rgb2gray(path)
    
    
endfunction 
