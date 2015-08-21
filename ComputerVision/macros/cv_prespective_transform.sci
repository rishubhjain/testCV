function [image_ret] = cv_prespective_transform(image,p1,p2,p3,p4) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_prespective_transform", 1 ));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_prespective_transform", 5));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_prespective_transform", 1));
		
	end
	
	checkconstant(p1,"cv_prespective_transform",2);
	
	checkconstant(p2,"cv_prespective_transform",3);
	
	checkconstant(p3,"cv_prespective_transform",4);
	
	checkconstant(p4,"cv_prespective_transform",5);
	
    image=converttonumpy(image)
    pyImport prespective
    image_ret=prespective.prespective_trans(image,p1(1),p2(1),p3(1),p4(1),p1(2),p1(2),p1(2),p1(2))
	
    
endfunction 