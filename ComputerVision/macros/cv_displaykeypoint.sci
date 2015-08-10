function [img_ret]=cv_displaykeypoint(image,keypoints,color)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_displaykeypoint", 1));
	end
		
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_displaykeypoint", 3));
		
	end
	
	checkconstant(color,cv_displaykeypoint,3);
	
	if checktype(keypoints)<>1 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Keypoint expected.\n"), "cv_displaykeypoint", 2));
	end
	
	
   img_ret=0;
   image=converttonumpy(image)
   image=cv_drawkeypoints(image,keypoints,color)
   im=cv_imshow_image(image)
endfunction