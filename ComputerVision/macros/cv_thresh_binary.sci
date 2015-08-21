
function[img_ret]=cv_thresh_binary(image,threshold,maxVal)
	
	image=converttonumpy(image)
	
	[lhs,rhs]=argn(0)	
	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_thresh_binary", 1));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_thresh_binary", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_thresh_binary", 1));
		
	end
	
	checkconstant(threshold,"cv_thresh_binary",2);
	
	checkconstant(maxVal,"cv_thresh_binary",3);
	
	image=converttonumpy(image)

    pyImport Thresh_binary
    img_ret=Thresh_binary.thresh_binary(image,threshold,maxVal)
endfunction