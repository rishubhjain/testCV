
function [kp,des] = cv_surf(image,hessianThreshold,Upright) 
	[lhs,rhs]=argn(0)

	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_surf", 2));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_surf", 3));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_surf", 1));
		
	end
	
	checkconstant(hessianThreshold,"cv_surf",2);
	
	checkconstant(Upright,"cv_surf",3);
	
    image=converttonumpy(image);
    pyImport Surf
    a=Surf.SURF(image,hessianThreshold,Upright);
	kp=a(0)
	des=a(1)
	if(kp==0) then
		error("Please check input Image")        
	end
	
endfunction 