function [image_ret] = cv_equalizehist_path(path) 
	[lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    
    pyImport equalizeHist_file
    image_ret=equalizeHist_file.equalizeHist_path(path)

    
endfunction 