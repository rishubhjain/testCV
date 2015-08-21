function[mat]=cv_zeros(rows,cols,type1)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_zeros", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_zeros", 3 ));
	end
	
	checkconstant(rows,"cv_zeros",2);
	
	checkconstant(cols,"cv_zeros",3);
	
	checkconstant(type1,"cv_zeros",4);
	
	pyImport Zeros
    mat=Zeros.zeros(rows,cols,type1)
endfunction