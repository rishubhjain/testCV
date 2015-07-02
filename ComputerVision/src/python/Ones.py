import numpy as np

def ones(rows,cols,type1):
    rows=int(rows)
    cols=int(cols)
    if type1==1:
        img=np.ones((rows,cols),np.float64)
    elif type1==2:
        img=np.ones((rows,cols),np.uint8)

    
    return img
