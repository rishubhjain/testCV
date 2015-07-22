function [contours1,hierarchy ] = cv_findcontour(image,mode,method) 
	
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	if (lhs<>2) then
		error("this function returns contours and hierarchy ");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	contours=0
	image_ret=0
    image=converttonumpy(image)
	
    pyImport Findcontours
    ret_val=Findcontours.findcontours(image,mode,method)
	contours1=ret_val(0)
	hierarchy =ret_val(1)
	
endfunction 