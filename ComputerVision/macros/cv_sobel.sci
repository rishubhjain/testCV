function[image]=cv_sobel(img, xorder, yorder, ksize,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_sobel", 1));
	end
	
	if(rhs<>6) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_sobel", 6));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_sobel", 1));
		
	end
	
	checkconstant(xorder,"cv_sobel",2);
	
	checkconstant(yorder,"cv_sobel",3);
	
	checkconstant(ksize,"cv_sobel",4);
	
	checkconstant(mode,"cv_sobel",5);
	
	
	
	image=converttonumpy(image)
	pyImport Sobel
    image=Sobel.sobel(img, ddepth, xorder, yorder, ksize,mode)
endfunction