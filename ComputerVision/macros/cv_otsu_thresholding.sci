//otsu can be improved by adding different types of thresholding and filtering	

function[retVal,thresh]=cv_otsu_thresholding(image,threshold,maxVal) 
	image=converttonumpy(image)
	[lhs,rhs]=argn(0)	
	if (cv_check_channel(image)==3) then
		warning("This function applies on only grayscale image so the image will be copy/converted to grayscale")
		image=cv_rgb2gray_image(image)
	end
	if (lhs<>2) then
		error("this function returns image(thresh) and optimal threshold value");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
    
    pyImport Otsus_binarization
    argout=Otsus_binarization.otsu(image,threshold,maxVal)
	retVal=argout(0)
    thresh=argout(1)
    
endfunction 



