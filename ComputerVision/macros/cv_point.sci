
function[point]=cv_point(list1)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns point");
	end
	
	if(rhs<>1) then
		error("invalid number of arguments");
	end
	pyImport Point
    point=Point.point_int(list1)
endfunction