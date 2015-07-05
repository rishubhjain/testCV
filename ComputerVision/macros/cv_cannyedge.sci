function[image]=cv_cannyedge(image,thresh1,thresh2)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport Cannyedge
    image=Cannyedge.cannyedge(image,thresh1,thresh2)
endfunction