function[matches]=cv_bfmatcher(des1,des2)
	if (lhs<>1) then
		error("this function returns matches");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	pyImport Bfmatcher
	des1=pyNpWrap(des1)
	des2=pyNpWrap(des2)
	matches=Bfmatcher.BFMatcher(des1,des2)
endfunction	