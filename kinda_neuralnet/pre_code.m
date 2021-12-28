rng(69)
data = randi(20,1,1000);
dvt = randi(100,1,20);
dvtd = dvt(data);

%% init weight and bias
[y,x] = rep(data);
n = length(data);
m = length(x);

b1_shift = dvt'-x';
w1 = zeros(m,n);
w2 = w1';
k=1;
for i = x
    w2(:,k) = (data == i);
    w1(k,:) = w2(:,k)/y(i);
    k = k+1;
end

b2 = (1:n)';

w3 = ((1:n)-(1:n)' > 0);
b3 = (0:n-1)';

w4 = ((1:n)-(1:n)' == 0);
b4 = data';

w5 = zeros(m,n);
for i = 1:m
    tempadd = randi(2,1,floor(n/2));
    tempadd(2,:) = zeros(1,floor(n/2));
    tempadd = reshape(tempadd,1,2*floor(n/2));
    tempadd = num2str(tempadd);
    tempadd = replace(tempadd,"1  0", "1 -1");
    tempadd1 = replace(tempadd , "2  0", "-1 1");
    tempadd = str2num(tempadd1);
    w5(i,:) = tempadd(1:n);
    %w5(i+m/2,:) = -(tempadd(1:n));
end
b5 = zeros(1,m);

%% feed forward
tic;
err = zeros(1,10000);
for epoch = 1:10000
    l1 = relu(w1*data'+b1_shift);
    l2 = relu(w2*l1+b2);
    templ3 = w3.*l2;
    templ3 = templ3 - b3';
    mat = tanh(2*templ3);
    mat = relu(mat);
    l3 = sum(mat)';
    l4 = relu(w4*l3+b4);
    l5 = (w5*l4);
    
    %error
    
    t = zeros(size(l5));
    e = (l5 - t).^2;
    
    d1 = (2*l5);
    d2 = w5'*d1;
    d3 = max(w4',0)*d2;
    tempd4 = max((1-(mat.^2)),0)*2.*w3;
    d4 = sum(tempd4,2);
    d5 = max(w2',0)*d4;
    
    %
    eta = 0.01;
    b1_shift = b1_shift - eta.*d5;
    
    saves = 537124;
    less = sum(e);
    while less < saves
        saves = less;
        bsave = b1_shift;
    end
    err(i) = sum(e);
end
toc;
