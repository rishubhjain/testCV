

function[retVal,thresh]=cv_otsu_thresholding(image,threshold,maxVal) 
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_otsu_thresholding", 2 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_otsu_thresholding", 3 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_otsu_thresholding", 1));
		
	end
	
	checkconstant(threshold,"cv_otsu_thresholding",2);
	
	checkconstant(maxVal,"cv_otsu_thresholding",3);
	
	image=converttonumpy(image)
    
    pyImport Otsus_binarization
    argout=Otsus_binarization.otsu(image,threshold,maxVal)
	retVal=argout(0)
    thresh=argout(1)
    
endfunction 



