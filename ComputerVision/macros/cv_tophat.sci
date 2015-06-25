function[img_ret]=cv_tophat(image,kernel_type,kernel_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	
	img_ret=0;
	image=converttonumpy(image)
	pyImport Tophat
    img_ret=Tophat.tophat(image,kernel_type,kernel_size)
endfunction