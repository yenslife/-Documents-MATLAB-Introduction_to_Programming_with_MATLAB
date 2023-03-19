function distance = get_distance(c1, c2)
distance = -1;
[num, txt, raw] = xlsread('Distances.xlsx');

size(num);
size(txt);
size(raw);

[row, ~] = find(strcmp(txt, c1));
[col, ~] = find(strcmp(txt, c2));

if (~isempty(row) && ~isempty(col))
    distance = raw{row, col};
end
end

% test: get_distance('Seattle, WA','Miami, FL')