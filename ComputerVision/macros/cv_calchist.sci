function [image_ret] = cv_calchist(image,channels,mask,histsize,ranges) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>5) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport calchist
    image_ret=calchist.histogram2d(image,channels,mask,histsize,ranges)
    
    
endfunction 