//test
function[img_ret]=cv_test(image,para2)
[lhs,rhs]=argn(0)
if (lhs<>1) then 
error("this function returns 1 arguments );
end
if (rhs<>2) then 
error("invalid number of arguments");
end
pyImport test1
img_ret=test1.test(image,para2)
end_function