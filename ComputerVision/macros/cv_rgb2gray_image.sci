pathname=get_absolute_file_path('cv_rgb2gray_image.sci')
pyAddToPath(pathname)

function [image_ret] = cv_rgb2gray_image(image) 
	[lhs,rhs]=argn(0)
	
	//if size(size(image),2) <> 1  then
		//error('The input image should be in a RGB format.');
	//end
  
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	pyAddToPath(pathname)
    
    pyImport rgb2gray_image
    image_ret=rgb2gray_image.rgb2gray(image)
    
    
endfunction 
