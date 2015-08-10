function [image_ret] = cv_clahe(image,clipLimit, titleGridSize) 
	
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_clahe", 1));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_clahe", 3));
	end
	
	checkconstant(color,"cv_clahe",2);
	
	checkconstant(color,"cv_clahe",3);
	
	
	image=converttonumpy(image)
	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
		
	end
	
	image=converttonumpy(image)
    
    pyImport clahe
    
	image_ret=clahe.CLAHE(image,clipLimit, titleGridSize)
    
    
endfunction 