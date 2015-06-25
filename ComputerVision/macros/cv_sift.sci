function [kp] = cv_sift(image) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns Keypoints");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image);
    image_ret=0
    pyImport Sift
    kp=Sift.SIFT(image)

endfunction 