function [image_ret] = cv_cornerharris(image,blocksize,ksize,k) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>4) then
		error("invalid number of arguments");
	end
	
	image=converttonumpy(image)
    pyImport cornerHarris
    image_ret=cornerHarris.cornerharris(image,blocksize,ksize,k)

endfunction 