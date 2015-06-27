
function [kp,des] = cv_orb(image,nfeatures,scaleFactor,color,displayimage) 
	[lhs,rhs]=argn(0)
	if (lhs<>2) then
		error("this function returns an image");
	end
	
	if(rhs<>5) then
		error("invalid number of arguments");
	end
	
    image=converttonumpy(image)
    pyImport Orb
    a=Orb.ORB(image,nfeatures,scaleFactor,color,displayimage)
	kp=a(0)
	des=a(1)
	if (kp==0) then
		error("Wrong Image")
	end
	
    
    
endfunction 