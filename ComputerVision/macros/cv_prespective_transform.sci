function [image_ret] = cv_prespective_transform(image,x1,x2,x3,x4,y1,y2,y3,y4) 
	[lhs,rhs]=argn(0)
	
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>9) then
		error("invalid number of arguments");
	end
	
    
    pyImport prespective
    image_ret=prespective.prespective_trans(image,x1,x2,x3,x4,y1,y2,y3,y4)
	
    
endfunction 