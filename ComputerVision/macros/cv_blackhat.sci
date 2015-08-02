function[img_ret]=cv_blackhat(image,kernel_type,kernel_size)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error("this function returns an image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	if checkimage(image)==0 then
		error("Please input an image(numpy.ndarray) as 1rst argument")
	end
	if typeof(kernel_size)<> 'constant' & typeof(kernel_size)<> 'constant'  then 
	error('input Argument should be constant')
	end
	image=converttonumpy(image)
	img_ret=0;
	pyImport Blackhat
    img_ret=Blackhat.Blackhat(image,kernel_type,kernel_size)
endfunction