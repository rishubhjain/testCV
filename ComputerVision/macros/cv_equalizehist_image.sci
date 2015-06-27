	function [image_ret] = cv_equalizehist_image(image) 
	[lhs,rhs]=argn(0)
	image=converttonumpy(image)
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
		
	end
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport equalizeHist_file
    image_ret=equalizeHist_file.equalizeHist_image(image)

endfunction 