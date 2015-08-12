function [contours1,hierarchy] = cv_findcontour(image,mode,method) 
	[lhs,rhs]=argn(0)
		
	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_findcontour", 2 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_findcontour", 3 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_findcontour", 1));
	end
	
	checkconstant(mode,"cv_findcontour",2);
	
	checkconstant(method,"cv_findcontour",3);
	
	
	image=converttonumpy(image)
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	
	contours=0
	image_ret=0
    image=converttonumpy(image)
	
    pyImport Findcontours
    ret_val=Findcontours.findcontours(image,mode,method)
	contours1=ret_val(0)
	hierarchy =ret_val(1)
	
endfunction 