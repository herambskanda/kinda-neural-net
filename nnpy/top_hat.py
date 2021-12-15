# Generated with SMOP  0.41
from libsmop import *
# top_hat.m

    
@function
def top_hat(input_=None,__=None,*args,**kwargs):
    varargin = top_hat.varargin
    nargin = top_hat.nargin

    if 1 == nargin:
        output=max(1 - abs(input_),0)
# top_hat.m:4
        output=max(output,0)
# top_hat.m:5
    else:
        if 2 == nargin:
            output=zeros(size(input_))
# top_hat.m:7
            output[input_ > logical_and(- 1,input_) < 0]=1
# top_hat.m:8
            output[input_ > logical_and(0,input_) < 1]=- 1
# top_hat.m:9
    
    return output
    
if __name__ == '__main__':
    pass
    