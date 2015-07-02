function[mat]=cv_ones(rows,cols,type1)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns matrix");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	pyImport Ones
    mat=Ones.ones(rows,cols,type1)
endfunction