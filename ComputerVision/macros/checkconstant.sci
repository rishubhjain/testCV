function[ret]= checkconstant(ele,file,arg_num)

	ret=0
	if typeof(ele)<> 'constant' then 
		ret=1
		error(msprintf(gettext("%s: Wrong type for argument %d: Constant expected.\n"), file, arg_num));
	end



endfunction