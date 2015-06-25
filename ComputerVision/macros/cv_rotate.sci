function [image_ret] = cv_rotate(image,angle) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image);
    image_ret=0
    pyImport Rotate
    image_ret=Rotate.rotate1(image,angle)

endfunction 