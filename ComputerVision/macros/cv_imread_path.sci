function[image_ret]=cv_imread_path(image_path,flag) 
    [lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>2) then
		error("invalid number of arguments");
	end	
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