//kp->keypoints

function [kp,des] = cv_brief(image,kp) 
	[lhs,rhs]=argn(0)
	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
	if(channel==3) then
		error("Please input a grayscale Image")
	end
	
	if (lhs<>2) then
		error("this function returns points and descriptor");
	end
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
    pyImport BRIEF
    image_ret=BRIEF.brief(image,kp)
	
    
    
endfunction 