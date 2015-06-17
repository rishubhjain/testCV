function [resize_image] = cv_resize(image, height,width,interpolation_unit) 
	[lhs,rhs]=argn(0)

	if(rhs<>3) then
		error("invalid number of arguments");
	end
	
    
    pyImport resize
    resize_image=resize.resize1(image,height,width,interpolation_unit)
		
		
    
    
endfunction 
