function M = trio(n, m)
A = ones(m,n)';
B = 2 * ones(m,n)';
C = 3 * ones(m,n)';
M = [A;B;C];
end