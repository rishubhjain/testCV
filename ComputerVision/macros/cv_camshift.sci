
function[ image_ret]=cv_camshift(video_path,r,h,c,w,mask,roi_hist)
	
	[lhs,rhs]=argn(0)	
	
	
	if (lhs<>1) then
		error("this function returns Image");
	end
	
	if(rhs<>7) then
		error("invalid number of arguments");
	end
	

    pyImport Camshift
    image_ret=Camshift.camshift(video_path,r,h,c,w,mask,roi_hist)
endfunction