# Generated with SMOP  0.41
from libsmop import *
# fully_connected.m

    
@function
def fully_connected(input_fun=None,input_=None,*args,**kwargs):
    varargin = fully_connected.varargin
    nargin = fully_connected.nargin

    if 1 == nargin:
        n=length(unique(input_))
# fully_connected.m:4
        bias=(arange(1,n))
# fully_connected.m:5
        weight=ones(size(bias))
# fully_connected.m:6
        output=dot(weight.T,input_)
# fully_connected.m:7
        output=output - bias.T
# fully_connected.m:8
        num=size(output)
# fully_connected.m:9
        output=input_fun(output)
# fully_connected.m:10
    