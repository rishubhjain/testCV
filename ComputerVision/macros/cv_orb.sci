
//check whether this function allows kp in float

function [kp,des] = cv_orb(image,kp) 
	[lhs,rhs]=argn(0)

	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
	if(channel==3) then
		error("Please input a grayscale Image")
	end
	
	if (lhs<>2) then
		error("this function returns an image");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport orb
    [kp,des]=orb.ORB(image,kp)
	if (kp==0) then
		error("Wrong Image")
	end
	
    
    
endfunction 