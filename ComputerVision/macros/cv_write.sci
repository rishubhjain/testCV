pathname=get_absolute_file_path('cv_write.sci')
pyAddToPath(pathname)

function [] = cv_write(path,image) 
	[lhs,rhs]=argn(0)
	
	
	if(rhs<>2) then
		error("invalid number of arguments");
	end
	
    
    pyImport cv_write_image
    cv_write_image.cv_write(path,image)
    
    
endfunction 
