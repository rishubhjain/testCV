function [keypoints]=cv_fast(image,threshold,nonmaxSuppression)
   [lhs,rhs]=argn(0)
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_fast", 1));
	end
		
	if(rhs~=1 & rhs~=2 & rhs~=3) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_fast", 3));
	end
	
	
	
	if (rhs==1) then
		threshold=10
		nonmaxSuppression=1
		checkconstant(threshold,"cv_fast",2);
	
		checkconstant(nonmaxSuppression,"cv_fast",3);
	end
	if (rhs==2) then
		nonmaxSuppression=1
		checkconstant(threshold,"cv_fast",2);
	
	checkconstant(nonmaxSuppression,"cv_fast",3);
	end
		
   img_ret=0;
   image=converttonumpy(image)
   pyImport Fast
   
   keypoints=Fast.fast(image,threshold,nonmaxSuppression)
   
endfunction