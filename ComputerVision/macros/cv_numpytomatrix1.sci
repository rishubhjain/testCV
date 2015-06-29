function[M]=cv_numpytomatrix1(image) 
	[lhs,rhs]=argn(0)
	if (lhs<>1) then
		error("This function returns an matrix");
	end
	if(rhs<>1) then
		error("Invalid number of input arguments");
	end
	mat=5
	if (cv_check_channel(image)==2) then
		pyImport Matrix1
		M=Matrix1.matrix_2d(image)
	end
	
	mat1=0
	//mat2=0
	//mat3=0
	pyImport Matrix1
	stacksize('max');
	a=size(mat1);
	M=hypermat([450 750 3]);
	if(cv_check_channel(image)==3) then
		for i=1:450
			M(i,:,:)=Matrix1.matrix_3d(image,i)
		
		end
		
	end
	
	

    
endfunction 



