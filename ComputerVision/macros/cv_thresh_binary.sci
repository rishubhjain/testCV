
function[img_ret]=cv_thresh_binary(image,threshold,maxVal)
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	//disp(typeof(image))
	//disp(type(image))
    pyImport Thresh_binary
    img_ret=Thresh_binary.thresh_binary(image,threshold,maxVal)
endfunction