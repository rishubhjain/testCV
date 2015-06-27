
function [image_ret] = cv_clahe(image,clipLimit, titleGridSize) 
	[lhs,rhs]=argn(0)
	image=converttonumpy(image)
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
		
	end
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
    
    pyImport clahe
    image_ret=clahe.CLAHE(image,clipLimit, titleGridSize)
    
    
endfunction 