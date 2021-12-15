# Generated with SMOP  0.41
from libsmop import *
# onecon.m

    
@function
def onecon(input_fun=None,input_data=None,bias=None,weight=None,*args,**kwargs):
    varargin = onecon.varargin
    nargin = onecon.nargin

    if 2 == nargin:
        bias=zeros(size(input_data(arange(),1)))
# onecon.m:4
        weight=randi(length(input_data(arange(),1)),(size(input_data(arange(),1))))
# onecon.m:5
        output=multiply(input_data,weight)
# onecon.m:6
        output=input_fun(output)
# onecon.m:7
        output=sum(output,1).T
# onecon.m:8
    else:
        if 4 == nargin:
            bias=reshape(bias,(size(input_data(arange(),1))))
# onecon.m:10
            weight=reshape(weight,(size(input_data(arange(),1))))
# onecon.m:11
            output=multiply(input_data,weight) - bias
# onecon.m:12
            output=input_fun(output)
# onecon.m:13
            output=sum(output,1).T
# onecon.m:14
    
    return output,bias,weight
    
if __name__ == '__main__':
    pass
    