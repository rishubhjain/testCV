
function[image]=converttonumpy(image)

if (type(image)==8) then
		image=pyNpWrap(image)
	end
endfunction