rng(345)
data = randi(20,1,1000);
dvt = randi(100,1,20);
dvtd = dvt(data);

a1 = fcon(@top_hat,data');

a2 = onecon(@relu,a1',zeros(1,20),dvt);

check1 = unique(dvtd - a2') % should be zero

a3 = a2+(1:length(a2))';

a4 = fcon(@f,a3,(1:length(a3)),ones(1,length(a3)));

a4 = triu(a4,1);

a5 = sum(a4,1);

check2 = unique(domino(dvtd) - a5) % should be zero

function out = f(in)
    out = in >= 0;
end

