function[matches]=cv_bfmatcher(des1,des2)
	
	if (lhs<>1) then
		error("this function returns matches");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	des1=pyNpWrap(des1)
	des2=pyNpWrap(des2)
	if checktype(des1)==2 & checktype(des2)==2 then
		
		pyImport Bfmatcher
		
		matches=Bfmatcher.BFMatcher(des1,des2)
	
	else 
		error("The parameter should be numpy ndarray array")
	end
endfunction	