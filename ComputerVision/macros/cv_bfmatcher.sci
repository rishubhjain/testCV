function[matches]=cv_bfmatcher(des1,des2)
	[lhs,rhs] = argn(0)
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_bfmatcher", 1));
	end
	
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_bfmatcher", 2));
	end
	des1=pyNpWrap(des1)
	des2=pyNpWrap(des2)

	if checktype(des1)==2 & checktype(des2)==2 then
		
		pyImport Bfmatcher
		
		matches=Bfmatcher.BFMatcher(des1,des2)
	
	else 
		error(msprintf(gettext("%s: Wrong type for argument %d: N-dimensionnal array expected.\n"), "cv_bfmatcher", 2));
		
	end
endfunction	