function [mmr,mmm] = minimax(M)
new_M = M';
row_max = max(new_M);
row_min = min(new_M);
mmr = row_max - row_min;
all_max = max(max(M));
all_min = min(min(M));
mmm = all_max - all_min;
end