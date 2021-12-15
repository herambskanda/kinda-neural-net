function [output,num] = fully_connected(input_fun,input)
    switch nargin
        case 1 
n = length(unique(input));
    bias = (1:n);
    weight = ones(size(bias));
    output = weight'*input;
    output = output - bias';
    num = size(output);
    output = input_fun(output);
end