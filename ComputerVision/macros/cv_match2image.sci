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
		error("this function returns Image");
	end
	
	if(rhs<>5) then
		error("invalid number of arguments");
	end
	image_ret=0
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
	[kp1,des1]=cv_orb(image1,nfeatures,scaleFactor,color,0)
	[kp2,des2]=cv_orb(image2,nfeatures,scaleFactor,color,0)
	matches=cv_bfmatcher(des1,des2);
	img_ret=cv_drawmatches(image1, kp1, image2, kp2, matches) 
	
endfunction