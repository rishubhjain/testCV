pathname=get_absolute_file_path('cv_wrapAffine_image.sci')
pyAddToPath(pathname)

function [img_ret]=cv_warpAffine_image(image,x,y)
	pyAddToPath(pathname)
	[lhs,rhs]=argn(0)
	arg=input_arguments(rhs,3)
	if(arg==0) then
		error("wrong number of arguments")
	end
		
    pyImport warpAffine_file
	
    img_ret=warpAffine_file.warpAffine_image(image,x,y)
	
	if(img_ret==0) then
		error("incorrect Image")
	end
endfunction