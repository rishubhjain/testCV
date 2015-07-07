function[image]=cv_match_template(image,template,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error("this function returns image");
	end
	
	if(rhs<>3) then
		error("invalid number of arguments");
	end
	image=converttonumpy(image)
	template=converttonumpy(template)
	pyImport Template_matching
    image=Template_matching.template_matching(image,template,mode)
endfunction