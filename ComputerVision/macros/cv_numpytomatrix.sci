function[M]=cv_numpytomatrix(image) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("This function returns an matrix");
	end
	if(rhs<>1) then
		error("Invalid number of input arguments");
	end
	matrix=2
	if (cv_check_channel(image)==2) then
		pyImport Matrix
		M=Matrix.matrix_2d(image)
	end
	mat1=0
	mat2=0
	mat3=0
	if(cv_check_channel(image)==3) then
		pyImport Matrix
		mat1=Matrix.matrix_3d(image,1)
		mat2=Matrix.matrix_3d(image,2)
		mat3=Matrix.matrix_3d(image,3)
		a=size(mat1);
		
		M=hypermat([a(1) a(2) 3]);
		M(:,:,1)=mat1;
		M(:,:,2)=mat2;
		M(:,:,3)=mat3;
		disp(matrix)
	end
	
	

    
endfunction 