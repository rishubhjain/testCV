function[image]=cv_zeros(image,mask,bgdModel,fgdModel,rect,iterations,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>7) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport Grabcut
    image=Grabcut.grabcut(image,mask,bgdModel,fgdModel,rect,iterations,mode)
endfunction