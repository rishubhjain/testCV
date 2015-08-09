
function[ image_ret]=cv_camshift(video_path,r,h,c,w,mask,roi_hist)
	
	[lhs,rhs]=argn(0)	
	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_camshift", 1));
	end
	
	if(rhs<>7) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_camshift", 7));
	end
	
	if typeof(video_path)<>'string' then
	
		error(msprintf(gettext("%s: Wrong type for argument %d: String expected.\n"), "cv_camshift", 1);
		
	end
	
	// Rest of the argument handling are still left
	
	
    pyImport Camshift
    image_ret=Camshift.camshift(video_path,r,h,c,w,mask,roi_hist)
endfunction