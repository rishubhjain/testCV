
function[matrix]=cv_numpytomatrix(image) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("This function returns an matrix");
	end
	
	if(rhs<>1) then
		error("Invalid number of input arguments");
	end
	
	
	if (cv_check_channel(image)==2) then
		pyImport Matrix
		matrix=Matrix.matrix_2d(image)
	end
	
	if(cv_check_channel(image)==3) then
		pyImport Matrix
		[mat1,mat2,mat3]=Matrix.matrix_3d(image)
		matrix(:,:,1)=mat1;
		matrix(:,:,2)=mat2;
		matrix(:,:,3)=mat3;
		
	end
	
	

    
endfunction 



