function summa = halfsum(M)

[row, col] = size(M);
n = 0;
summa = 0;
for i = 1:row
    n = n + 1;
    for j = n:col
        summa = summa + M(i,j);
    end
end
end