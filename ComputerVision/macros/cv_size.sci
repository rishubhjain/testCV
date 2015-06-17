function [size] = cv_size(image) 
	[lhs,rhs]=argn(0)
	
  
	if (lhs<>1) then
		error("this function returns a 1-D matrix");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    
    pyImport size_1
    size=size_1.cv_size(image)
    
    
endfunction 
