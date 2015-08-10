//img1,img2 - Grayscale images
//    kp1,kp2 - Detected list of keypoints through any of the OpenCV keypoint
//              detection algorithms
//    matches - A list of matches of corresponding keypoints through a KNN
//              OpenCV keypoint matching algorithm

function[image_ret]=cv_drawmatches(image1, kp1, image2, kp2, matches) 
	[lhs,rhs]=argn(0)

	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_drawmatches", 1));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_drawmatches", 5));
	end
	
	checkconstant(color,"cv_drawmatches",5);
	
	if checktype(kp1)<>1 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Keypoint expected.\n"), "cv_drawmatches", 2));
	end
	
	if checktype(kp2)<>1 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Keypoint expected.\n"), "cv_drawmatches", 4));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_drawmatches", 1));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_drawmatches", 3));
	end
	
	
	
	
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
	
	if (cv_check_channel(image1)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image1=cv_rgb2gray_image(image1)
		
	end
	if (cv_check_channel(image2)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image2=cv_rgb2gray_image(image2)
		
	end
	
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
    
    pyImport DrawMatches
    img_ret=DrawMatches.drawMatches(image1, kp1, image2, kp2, matches)
    
endfunction 



