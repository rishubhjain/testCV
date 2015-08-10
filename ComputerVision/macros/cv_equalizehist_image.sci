	function [image_ret] = cv_equalizehist_image(image) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_equalizehist_image", 1));
	end
	
	if(rhs<>1) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_equalizehist_image", 1));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_equalizehist_image", 1));
	end
	
	image=converttonumpy(image)
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
		
	end
	
	
    image=converttonumpy(image)
    pyImport equalizeHist_file
    image_ret=equalizeHist_file.equalizeHist_image(image)

endfunction 