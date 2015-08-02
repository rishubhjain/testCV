import numpy as np

def checkimage(image):
  
    if isinstance(image,np.ndarray):
        
        try:
           if image.shape:
                return 1
        except:
            return 0

    else :
        return 0
    return
                
            
