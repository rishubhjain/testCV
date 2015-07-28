function[ret,frame] = cv_frame(video_path) 
	
	[lhs,rhs]=argn(0)	

	if (lhs<>2) then
		error("this function returns ret and frame ");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	
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