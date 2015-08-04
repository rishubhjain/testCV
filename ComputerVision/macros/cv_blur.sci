
function[img_ret]=cv_blur(image,kernel_size) 
	[lhs,rhs]=argn(0)
	
	if (lhs<>1) then
	error("this function returns an image");
	end
	
	if(rhs<>2) then
	error("invalid number of input arguments");
	end
	if checkimage(image)==0 then
		error("Please input an image as 1rst argument")
	end
	if typeof(kernel_size)<> 'constant' then 
		error('input Argument should be constant')
	end
	image=converttonumpy(image)
    img_ret=0
    pyImport Blur
    img_ret=Blur.blur(image,kernel_size)    
    
endfunction 



