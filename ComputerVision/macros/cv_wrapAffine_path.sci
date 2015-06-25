//Applies an affine transformation to an image.

function [img_ret]=cv_warpAffine_path(path,x,y)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("This function returns an image");
	end
		
	if(rhs<>4) then
		error("Invalid number of input arguments");
	end
   img_ret=0;
   image=converttonumpy(image)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_path(path,x,y)
endfunction