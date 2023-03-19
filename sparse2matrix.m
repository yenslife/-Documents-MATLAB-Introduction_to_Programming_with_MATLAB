function matrix = sparse2matrix(cellvec)

matrix = ones(cellvec{1}(1),cellvec{1}(2)) * cellvec{2};
for ii = 3:length(cellvec)
    matrix(cellvec{ii}(1), cellvec{ii}(2)) = cellvec{ii}(3);
end

end