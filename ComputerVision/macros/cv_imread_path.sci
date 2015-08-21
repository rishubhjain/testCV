function[image_ret]=cv_imread_path(image_path,flag) 
    [lhs,rhs]=argn(0)
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_imread_path", 1 ));
	end
	if(rhs<>2) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_imread_path", 2 ));
	end	
	
	checkconstant(flag,"cv_imread_path",2);
	
	
	image_ret=0;
	if (flag==0) then
	pyImport imread_path
	
	image_ret=imread_path.imread_gray(image_path);
	end
	if (flag==1) then
	pyImport imread_path
	
	image_ret=imread_path.imread_rgb(image_path);
	end
	
endfunction