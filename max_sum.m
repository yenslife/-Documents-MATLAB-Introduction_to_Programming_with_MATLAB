function [summa, index] = max_sum(v, n)

%   是要找連續的，不要搞錯題意了
[~, col] = size(v);
summa = -1/0;
if col < n
    summa = 0;
    index = -1;
    return
end

for i = 1:col-n+1
    if sum(v(i:i+n-1)) > summa
        summa = sum(v(i:i+n-1));
        index = i;
    end
end

end
