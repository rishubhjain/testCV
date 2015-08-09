function [kp,des] = cv_brief(image,kp) 
	
	[lhs,rhs]=argn(0)
	
	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_brief", 2));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_brief", 2));
	end
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_brief", 1));
	end
	
	if checktype(kp)<>1 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Keypoint expected.\n"), "cv_brief", 2));
	end
		
	image=converttonumpy(image)
    pyImport BRIEF
    a=BRIEF.brief(image,kp)
	kp=a(0);
	des=a(1)
	
    
    
endfunction 