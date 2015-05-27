pathname=get_absolute_file_path('cv_imread_path.sci');
pyAddToPath(pathname);

function[image1]=cv_imread_path(image_path) 
    [lhs,rhs]=argn(0)
	
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyAddToPath(pathname)
	pyImport imread_path
	
	image=imread_path.imread(image_path)
	if(isempty(image))
		image1=[1 1 1;1 1 1;1 1 1];
		error("wrong Path");
	
	else
		mprintf("right path")
		image_ret=image;
	end
endfunction