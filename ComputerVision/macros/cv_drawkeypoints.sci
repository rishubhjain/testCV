function [img_ret]=cv_drawkeypoints(image,keypoints,color)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_drawkeypoints", 1));
	end
		
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_drawkeypoints", 3));
	end
	
	checkconstant(color,cv_drawkeypoints,3);
	
	if checktype(keypoints)<>1 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Keypoint expected.\n"), "cv_drawkeypoints", 2));
	end
	
	
   img_ret=0;
   image=converttonumpy(image)
   pyImport Drawkeypoints
   img_ret=Drawkeypoints.drawkeypoint(image,keypoints,color)
endfunction