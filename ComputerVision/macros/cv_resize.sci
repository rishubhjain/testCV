function [resize_image] = cv_resize(image, height,width,interpolation_unit) 
	[lhs,rhs]=argn(0)

	if(rhs<>4) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport Resize
    resize_image=Resize.resize1(image,height,width,interpolation_unit)
  
endfunction 
