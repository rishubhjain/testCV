def point(list):
    for i in xrange(0,len(list)):
        
        globals()['p%s'%i]=list[i]
        
    point=()
    for i in xrange(0,len(list)):

        point=point + (globals()['p%s'%i],)

    return point


def point_int(list):
    for i in xrange(0,len(list)):
        
        globals()['p%s'%i]=int(list[i])
    point=()
    for i in xrange(0,len(list)):

        point=point + (globals()['p%s'%i],)
        
  

    return point
    
