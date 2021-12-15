function output = relu(input,~)
    switch nargin 
        case 1 
            output = max(input,0);
        case 2            
            output = input>0;
    end
end