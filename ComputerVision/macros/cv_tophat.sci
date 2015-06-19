function[img_ret]=cv_tophat(image,kernal_type,kernal_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	img_ret=0;
	pyImport Tophat
    img_ret=Tophat.tophat(image,kernal_type,kernal_size)
endfunctionn