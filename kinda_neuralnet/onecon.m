function [output,bias,weight] = onecon(input_fun,input_data,bias,weight)
    switch nargin
        case 2           
            bias = zeros(size(input_data(:,1)));
            weight = randi(length(input_data(:,1)),(size(input_data(:,1))));
            output = input_data.*weight;
            output = input_fun(output);
            output = sum(output,1)';
        case 4
            bias = reshape(bias,(size(input_data(:,1))));
            weight = reshape(weight,(size(input_data(:,1))));
            output = input_data.* weight - bias;
            output = input_fun(output);
            output = sum(output,1)';            
    end
end