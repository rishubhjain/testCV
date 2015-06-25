
function [image_ret] = cv_clahe(image,clipLimit, titleGridSize) 
	[lhs,rhs]=argn(0)
	
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