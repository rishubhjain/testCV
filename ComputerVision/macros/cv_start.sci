pathname=get_absolute_file_path('cv_start.sci')
pathname1=pathname+ "a.jpg"
function[input_image]=cv_start()

input_image=cv_imread_path(pathname1,0)

endfunction