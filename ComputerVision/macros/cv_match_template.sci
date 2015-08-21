function[image]=cv_match_template(image,template,mode)
	[lhs,rhs]=argn(0)	
	
	if (lhs<>1) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_match_template", 1 ));
	end
	
	if(rhs<>3) then
		error(msprintf(gettext("%s: Wrong number of output arguments: %d  expected.\n"), "cv_match_template", 3 ));
	end
	
	if checkimage(image)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_match_template", 1));
		
	end
	
	if checkimage(template)==0 then
		error(msprintf(gettext("%s: Wrong type for argument %d: Image expected.\n"), "cv_match_template", 2));
		
	end
	
	checkconstant(mode,"cv_match_template",3);
	
	image=converttonumpy(image)
	template=converttonumpy(template)
	pyImport Template_matching
    image=Template_matching.template_matching(image,template,mode)
endfunction