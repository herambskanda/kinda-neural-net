# Generated with SMOP  0.41
from libsmop import *
# relu.m

    
@function
def relu(input_=None,__=None,*args,**kwargs):
    varargin = relu.varargin
    nargin = relu.nargin

    if 1 == nargin:
        output=max(input_,0)
# relu.m:4
    else:
        if 2 == nargin:
            output=input_ > 0
# relu.m:6
    
    return output
    
if __name__ == '__main__':
    pass
    