
function[ image_ret]=cv_meanshift(video_path,r,h,c,w,mask,roi_hist)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_meanshift", 1 ));
	end
	if(rhs<>7) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_meanshift", 7));
	end
	
	checkconstant(r,"cv_meanshift",2);
	
	checkconstant(h,"cv_meanshift",3);
	
	checkconstant(c,"cv_meanshift",4);
	
	checkconstant(w,"cv_meanshift",5);
	
	checkconstant(roi_hist,"cv_meanshift",6);
	
	
	pyImport Meanshift
    image_ret=Meanshift.meanshift(video_path,r,h,c,w,mask,roi_hist)
endfunction	