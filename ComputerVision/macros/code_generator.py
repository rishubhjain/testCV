import sys

def write():
    file_name=input('Enter name of File:')
    print('Creating new text file') 

    name = str(file_name)+'.sci'  # Name of text file coerced with +.txt

    try:
        file = open(str(name),'w')   # Trying to create a new file or open one
        file.close()

    except:
        print('Something went wrong! Can\'t tell what?')
        sys.exit(0) # quit Python

    return


def coding():
    desc=input('Enter description for function :')
    
    name=input('Enter name of File:')
    file_name=str(name)+'.sci'
    no_of_output_args=input('Enter number of output argument:')
    for i in xrange(1,no_of_output_args+1):
        if i==1:
            globals()['oarg%s'%i]=input('Enter ' +str(i)+'rst output argument:')
        elif i==2:
            globals()['oarg%s'%i]=input('Enter ' +str(i)+'nd output argument:')
        elif i==3:
            globals()['oarg%s'%i]=input('Enter ' +str(i)+'rd output argument:')
        else:
            globals()['oarg%s'%i]=input('Enter ' +str(i)+'th output argument:')    
        
    
    file=open(file_name,'w')
    file.write("//"+str(desc)+"\n")

    file.write('function[')
    
    
    for i in xrange(1,no_of_output_args+1):
            if i==no_of_output_args:
                file.write(str(globals()['oarg%s'%i]))
            else:
                file.write(str(globals()['oarg%s'%i])+',')


    no_of_input_args=input('Enter number of input argument:')
    for i in xrange(1,no_of_input_args+1):
        if i==1:
            globals()['iarg%s'%i]=input('Enter ' +str(i)+'rst input argument:')
        elif i==2:
            globals()['iarg%s'%i]=input('Enter ' +str(i)+'nd input argument:')
        elif i==3:
            globals()['iarg%s'%i]=input('Enter ' +str(i)+'rd input argument:')
        else:
            globals()['iarg%s'%i]=input('Enter ' +str(i)+'th input argument:')



    file.write(']='+str(name)+'(')

    for i in xrange(1,no_of_input_args+1):
            if i==no_of_input_args:
                file.write(str(globals()['iarg%s'%i]))
            else:
                file.write(str(globals()['iarg%s'%i])+',')

    file.write(')\n')
    file.write('[lhs,rhs]=argn(0)\n')
    
    file.write('if (lhs<>'+str(no_of_output_args)+') then \n')
    file.write('error("this function returns '+str(no_of_output_args)+' arguments );\n')
    file.write('end\n')
    file.write('if (rhs<>'+str(no_of_input_args)+') then \n')
    file.write('error("invalid number of arguments");\n')
    file.write('end\n')

    python_file=input('Enter name of python file:')

    file.write('pyImport '+str(python_file)+ '\n')
    for i in xrange(1,no_of_output_args+1):
            if i==no_of_output_args:
                file.write(str(globals()['oarg%s'%i]))
            else:
                file.write(str(globals()['oarg%s'%i])+',')
    python_func_name=input('Enter the name of function:')
    file.write('='+str(python_file)+'.'+str(python_func_name)+'(')
    for i in xrange(1,no_of_input_args+1):
            if i==no_of_input_args:
                file.write(str(globals()['iarg%s'%i]))
            else:
                file.write(str(globals()['iarg%s'%i])+',')
    
    file.write(')\n')
    file.write('end_function')
    
    file.close()
    return


