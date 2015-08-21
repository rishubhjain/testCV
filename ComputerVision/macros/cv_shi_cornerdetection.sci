
function[image,corners]=cv_shi_cornerdetection(image, maxCorners, qualityLevel, minDistance)
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_shi_cornerdetection", 1));
	end
	
	if(rhs<>4) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_shi_cornerdetection", 4));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_shi_cornerdetection", 1));
		
	end
	
	checkconstant(maxCorners,"cv_shi_cornerdetection",2);
	
	checkconstant(qualityLevel,"cv_shi_cornerdetection",3);
	
	checkconstant(minDistance,"cv_shi_cornerdetection",4);
	
	image=converttonumpy(image)

    pyImport shi_cornerdetection
    ret=shi_cornerdetection.goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance)
	image=ret(0)
	corners=ret(1)
endfunction