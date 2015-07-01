function [contours,image_ret] = cv_findcontour(image,mode,method) 
	
	[lhs,rhs]=argn(0)
	
	if (lhs<>2) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	contours=0
	image_ret=0
    image=converttonumpy(image)
	disp(typeof(image))
    pyImport Findcontours
    Findcontours.findcontours(image,mode,method)
	//contours=ret_val(0)
	//image_ret=ret_val(1)
	
endfunction 