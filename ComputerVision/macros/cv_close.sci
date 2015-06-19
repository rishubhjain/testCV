function[img_ret]=cv_close(image,kernal_type,kernal_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end

	pyImport CLOSE
    img_ret=CLOSE.close(image,kernal_type,kernal_size)
endfunction
