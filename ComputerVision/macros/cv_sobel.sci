function[image]=cv_sobel(img, ddepth, xorder, yorder, ksize,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>6) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	pyImport Sobel
    image=Sobel.sobel(img, ddepth, xorder, yorder, ksize,mode)
endfunction