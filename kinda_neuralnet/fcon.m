function [output,bias,weight] = fcon(input_fun,input_data,bias,weight)
    switch nargin
        case 4 
            output = input_data*weight;
            output = output - bias;
            output = input_fun(output);
        case 2 
            bias = unique(input_data);
            weight = ones(size(bias));
            output = weight'*input_data;
            output = output - bias';
            output = input_fun(output);
    end
        
end
            