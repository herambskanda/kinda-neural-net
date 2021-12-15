function output = domino(input_data,input_dvt)
    switch nargin 
        case 1 
            n = length(input_data);
            output = zeros(1,n);
            for i = 1:n
                m = max(input_data(i),n);
                output(i+1:m) = output(i+1:m) + 1;
            end
        case 2
            dvt = zeros(1,max(unique(input_data)));
            dvt(input_dvt) = 1;
            input_dvt = dvt .* (1:max(unique(input_data)));
            input_data = input_dvt(input_data);
            n = length(input_data);
            output = zeros(1,n);
            for i = 1:n
                m = max(input_data(i),n);
                output(i+1:m) = output(i+1:m) + 1;
            end
    end
end