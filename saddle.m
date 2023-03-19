function indices = saddle(M)
indices = double.empty;
[row, col] = size(M);

for ii = 1:row
    for jj = 1:col
        p = M(ii, jj);
        if check_max_in_row(p, M, ii) && check_min_in_col(p, M, jj)
            indices(end+1,:) = [ii,jj];
        end
    end

end

end

function bool = check_max_in_row(p, M, row)
bool = false;
    if M(row,:) <= p
       bool = true; 
    end
end

function bool = check_min_in_col(p, M, col)
bool = false;
    if M(:,col) >= p
       bool = true; 
    end
end
