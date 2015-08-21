
function [kp,des] = cv_orb(image,nfeatures,scaleFactor,color,displayimage) 
	[lhs,rhs]=argn(0)
	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_orb", 2 ));
	end
	
	if(rhs<>5) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_orb", 5));
	end
	
    image=converttonumpy(image)
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_orb", 1));
		
	end
	
	checkconstant(nfeatures,"cv_orb",2);
	
	checkconstant(scaleFactor,"cv_orb",3);
	
	
	
	checkconstant(color,"cv_orb",4);
	
	checkconstant(displayimage,"cv_orb",5);
	
	
    pyImport Orb
    a=Orb.ORB(image,nfeatures,scaleFactor,color,displayimage)
	kp=a(0)
	des=a(1)
	if (kp==0) then
		error("Wrong Image")
	end
	
    
    
endfunction 