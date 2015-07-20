function [image_ret] = cv_flannmatch(des1,des2,num_trees,num_checks,k) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>5) then
		error("invalid number of arguments");
	end
	
	image=converttonumpy(image)
    pyImport Flann_match
    image_ret=Flann_match.flann_match(des1,des2,num_trees,num_checks,k)

endfunction 