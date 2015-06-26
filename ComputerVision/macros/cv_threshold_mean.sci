function[img_ret]=cv_threshold_mean(image,threshold,block,C)
    image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image1=cv_rgb2gray_image(image)
	end
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image1)
	
	pyImport adaptive_threshold
    img_ret=adaptive_threshold.adaptive_thresh_mean(image,threshold,block,C)
endfunction