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


def xml():
    #desc=input('Enter description for function :')
    name=input('Enter name of File:')
    file_name=str(name)+'.xml'
    file=open(file_name,'w')
    file.write('<?xml version="1.0" encoding="UTF-8"?>\n')
    
    file.write('<refentry xmlns="http://docbook.org/ns/docbook" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:scilab="http://www.scilab.org" xmlns:svg="http://www.w3.org/2000/svg" xmlns:ns3="http://www.w3.org/1999/xhtml" xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:db="http://docbook.org/ns/docbook" version="5.0-subset Scilab" xml:id="'+str(name)+'" xml:lang="en">\n')
    purpose=input("Enter purpose of the function: ")
    file.write('<refnamediv>\n<refname>'+name+'</refname>\n <refpurpose>'+str(purpose)+'</refpurpose>\n </refnamediv>\n')  


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

    file.write('\n<refsynopsisdiv>\n <title>Calling Sequence</title> \n<synopsis>')
    for i in xrange(1,no_of_output_args+1):
            if i==no_of_output_args:
                file.write(str(globals()['oarg%s'%i]))
            else:
                file.write(str(globals()['oarg%s'%i])+',')



    file.write('='+str(name)+'(')

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

    for i in xrange(1,no_of_input_args+1):
            if i==no_of_input_args:
                file.write(str(globals()['iarg%s'%i]))
            else:
                file.write(str(globals()['iarg%s'%i])+',')

    file.write(')')
    file.write('\n</synopsis>\n </refsynopsisdiv>\n')
    file.write('<refsection> \n<title>Arguments</title>\n<variablelist>\n')
    for i in xrange(1,no_of_input_args+1):
        file.write('<varlistentry>\n<term>'+str(globals()['iarg%s'%i])+'</term>\n')
        info=input('Enter the details for argument '+str(globals()['iarg%s'%i])+' :')
        file.write('<listitem>\n<para>'+str(info)+'</para>\n</listitem>\n</varlistentry>\n')

    for i in xrange(1,no_of_output_args+1):
        file.write('<varlistentry>\n<term>'+str(globals()['oarg%s'%i])+'</term>\n')
        info=input('Enter the details for argument '+str(globals()['oarg%s'%i])+' :')
        file.write('<listitem>\n<para>'+str(info)+'</para>\n</listitem>\n</varlistentry>\n')        
        

            
    file.write('</variablelist>\n</refsection>\n')


    
    file.write('<refsection> \n<title>Description</title>\n')
    desc_heading=input('Enter Heading of the Description: ')
    
    desc=input('Enter the Complete Description of the function:')

    file.write('<para>'+str(desc_heading)+'</para>\n')
    file.write('<para>'+str(desc)+'</para></refsection>\n')
    file.write('<refsection>\n<title>Examples</title>\n<programlisting role="example">\n')
    example=input('Provide an example usage of this function:')
    file.write(str(example)+'</programlisting>\n</refsection>\n')
    
    link1=input('Enter link to 1rst See Also:')
    link2=input('Enter link to 2nd See Also:')
    file.write('<refsection role="see also">\n<title>See Also</title>\n<simplelist type="inline">\n<member>\n<link linkend="'+str(link1)+'">')
    
    file.write(str(link1)+'</link>\n<link linkend="'+str(link2)+'">')
    file.write(str(link2)+'</link>\n</member>\n</simplelist>\n</refsection>\n</refentry>')

 
    
    file.close()
    return


