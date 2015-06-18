function [img_ret]=cv_warpAffine_image(image,x,y)
    [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_image(image,x,y)
endfunction