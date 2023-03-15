function [a,s] = myRand(low, high)
a = low + rand(3, 4) * (high - low);
v = a(:);
s = sumUp(v);
end


function summa = sumUp(M)
global v
v = M(:);
summa = sum(v);
end

