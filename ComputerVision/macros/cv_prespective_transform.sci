function [image_ret] = cv_prespective_transform(image,p1,p2,p3,p4) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>9) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport prespective
    image_ret=prespective.prespective_trans(image,p1(1),p2(1),p3(1),p4(1),p1(2),p1(2),p1(2),p1(2))
	
    
endfunction 