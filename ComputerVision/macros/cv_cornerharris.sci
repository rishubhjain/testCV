function [image_ret] = cv_cornerharris(image,blocksize,ksize,k) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_cornerharris", 1));
	end
	
	if(rhs<>4) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_cornerharris", 4));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_cornerharris", 1));
	end
	
	checkconstant(blocksize,"cv_cornerharris",2);
	
	checkconstant(ksize,"cv_cornerharris",3);
	
	checkconstant(k,"cv_cornerharris",4);
	
	image=converttonumpy(image)
    pyImport cornerHarris
    image_ret=cornerHarris.cornerharris(image,blocksize,ksize,k)

endfunction 