
function [channel] = cv_check_channel(image) 
	[lhs,rhs]=argn(0)
	
  
	if (lhs<>1) then
		error("this function returns channel of image");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
	pyImport cvcheck_channel
	channel=cvcheck_channel.check_channel(image);
    
    
endfunction 
