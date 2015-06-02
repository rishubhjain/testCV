pathname=get_absolute_file_path('cv_warpAffine_patn.sci')
pyAddToPath(pathname)

function [img_ret]=cv_warpAffine_path(path,x,y)

	[lhs,rhs]=argn(0)
	arg=input_arguments(rhs,3)
	if(arg==0) then
		error("wrong number of arguments")
	end
	pyAddToPath(pathname)
    pyImport warpAffine_file
    img_ret=warpAffine_file.warpAffine_path(path,x,y)
	if(img_ret==0) then
		error("incorrect Image")
	end
endfunction