function [ret] = checktype(ele)
	pyImport Checktype
	ret=Checktype.checktype(ele)
endfunction