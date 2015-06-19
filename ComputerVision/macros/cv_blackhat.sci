function[img_ret]=cv_blackhat(image,kernel_type,kernel_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	img_ret=0;
	pyImport Blackhat
    img_ret=Blackhat.blackhat(image,kernel_type,kernel_size)
endfunction