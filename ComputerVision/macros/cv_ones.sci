function[mat]=cv_ones(rows,cols,type1)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_ones", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_ones", 3 ));
	end
	
	checkconstant(rows,"cv_ones",2);
	
	checkconstant(cols,"cv_ones",3);
	
	checkconstant(type1,"cv_ones",4);
	
	
	
	pyImport Ones
    mat=Ones.ones(rows,cols,type1)
endfunction