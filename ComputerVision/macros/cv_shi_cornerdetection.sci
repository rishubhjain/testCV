
function[image,corners]=cv_shi_cornerdetection(image, maxCorners, qualityLevel, minDistance)
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	
	if (lhs<>1) then
		error("this function returns corners");
	end
	
	if(rhs<>4) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)

    pyImport shi_cornerdetection
    ret=shi_cornerdetection.goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance)
	image=ret(0)
	corners=ret(1)
endfunction