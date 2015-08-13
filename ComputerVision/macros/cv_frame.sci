function[ret,frame] = cv_frame(video_path) 
	
	[lhs,rhs]=argn(0)	

	if (lhs<>2) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_frame", 2));
	end
	
	if(rhs<>1) then
		error(msprintf(gettext("%s: Wrong number of input arguments: %d  expected.\n"), "cv_frame", 1 ));
	end
	
	//if (typeof(video_path)<>'string')  then
	//	error(msprintf(gettext("%s: Wrong type for argument %d: String expected.\n"), "cv_frame", 1));
	//end
	
	
	if video_path==0 then
		pyImport Frame
		ret_frame=Frame.frame_camera(video_path)
	else 
		pyImport Frame_path
		ret_frame=Frame_path.frame_path(video_path)
	end
	ret=ret_frame(0)
	frame=ret_frame(1)
	
	
endfunction 