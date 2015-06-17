function[img_ret]=cv_close(image)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end

	pyImport morphological_file
    img_ret=morphological_file.close(image)
endfunction
