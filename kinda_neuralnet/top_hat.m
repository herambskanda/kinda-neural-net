function output = top_hat(input, ~ )
    switch nargin
        case 1 
            output = max(1 - abs(input),0);
            output = max(output , 0);
        case 2
            output = zeros(size(input));
            output(input > -1 & input < 0) = 1;
            output(input > 0 & input < 1) = -1;
    end
end