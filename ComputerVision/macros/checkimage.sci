function [ret] = checkimage(image)
	image=converttonumpy(image)
	pyImport Checkimage
	ret=Checkimage.checkimage(image)
endfunction