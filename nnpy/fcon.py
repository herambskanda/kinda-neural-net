# Generated with SMOP  0.41
from libsmop import *
# fcon.m

    
@function
def fcon(input_fun=None,input_data=None,bias=None,weight=None,*args,**kwargs):
    varargin = fcon.varargin
    nargin = fcon.nargin

    if 4 == nargin:
        output=dot(input_data,weight)
# fcon.m:4
        output=output - bias
# fcon.m:5
        output=input_fun(output)
# fcon.m:6
    else:
        if 2 == nargin:
            bias=unique(input_data)
# fcon.m:8
            weight=ones(size(bias))
# fcon.m:9
            output=dot(weight.T,input_data)
# fcon.m:10
            output=output - bias.T
# fcon.m:11
            output=input_fun(output)
# fcon.m:12
    
    
    return output,bias,weight
    
if __name__ == '__main__':
    pass
    
    