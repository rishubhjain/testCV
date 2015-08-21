function[image_ret]=cv_match2image(image1,image2,nfeatures,scaleFactor,color)
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image1)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image1=cv_rgb2gray_image(image1)
		
	end
	if (cv_check_channel(image2)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image2=cv_rgb2gray_image(image2)
		
	end
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_match2image", 1 ));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_match2image", 5 ));
	end
	
	if checkimage(image1)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_match2image", 1));
		
	end
	
	if checkimage(image2)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_match2image", 2));
		
	end
	
	checkconstant(nfeatures,"cv_match2image",3);
	
	checkconstant(scaleFactor,"cv_match2image",4);
	
	checkconstant(color,"cv_match2image",5);
	
	image_ret=0
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
	[kp1,des1]=cv_orb(image1,nfeatures,scaleFactor,color,0)
	[kp2,des2]=cv_orb(image2,nfeatures,scaleFactor,color,0)
	matches=cv_bfmatcher(des1,des2);
	img_ret=cv_drawmatches(image1, kp1, image2, kp2, matches) 
	
endfunction