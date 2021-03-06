function [matches] = cv_flannmatch(des1,des2,num_trees,numchecks,k) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_flannmatch", 1 ));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_flannmatch", 5));
	end
	
	checkconstant(num_trees,"cv_flannmatch",3);
	
	checkconstant(numchecks,"cv_flannmatch",4);
	
	checkconstant(k,"cv_flannmatch",5);
	
	if checktype(des1)==2 & checktype(des2)==2 then
		image=converttonumpy(image)
		pyImport Flann_match
		matches=Flann_match.flann_match(des1,des2,num_trees,numchecks,k)
	
	else
		error(msprintf(gettext("%s: Wrong type for argument %d: N-dimensionnal array expected.\n"), "cv_flannmatch", 1));
	end
endfunction 