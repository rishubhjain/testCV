function [kp,des] = cv_brief(image,kp) 
	[lhs,rhs]=argn(0)
	if (lhs<>2) then
		error("this function returns points and descriptor");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	if checkimage(image)==0 then
		error("Please input an image(numpy.ndarray) as 1rst argument")
	end
	if checktype(kp)<>1 then
		error('Please check keypoints')
	end
		
	image=converttonumpy(image)
    pyImport BRIEF
    a=BRIEF.brief(image,kp)
	kp=a(0);
	des=a(1)
	
    
    
endfunction 