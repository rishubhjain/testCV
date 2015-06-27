//img1,img2 - Grayscale images
//    kp1,kp2 - Detected list of keypoints through any of the OpenCV keypoint
//              detection algorithms
//    matches - A list of matches of corresponding keypoints through a KNN
//              OpenCV keypoint matching algorithm

function[image_ret]=cv_drawmatches(image1, kp1, image2, kp2, matches) 
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
	image1=converttonumpy(image1)
	image2=converttonumpy(image2)
    
    pyImport DrawMatches
    img_ret=DrawMatches.drawMatches(image1, kp1, image2, kp2, matches)
    
endfunction 



