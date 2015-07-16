function [img_ret]=cv_drawkeypoints(image,keypoints,color)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("This function returns an image");
	end
		
	if(rhs<>3) then
		error("Invalid number of input arguments");
	end
   img_ret=0;
   image=converttonumpy(image)
   pyImport Drawkeypoints
   img_ret=Drawkeypoints.drawkeypoint(image,keypoints,color)
endfunction