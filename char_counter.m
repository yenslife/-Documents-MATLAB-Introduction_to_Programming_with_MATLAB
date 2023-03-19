function count = char_counter(fname, character)

fid = fopen(fname, 'r');

if (fid < 0) 
    count = -1;
    return;
end

if ~ischar(character)
    count = -1;
    return;
end

oneline = fread(fid, inf, '*char');

[~,count] = size(strfind(convertCharsToStrings(oneline), character));

fclose(fid);

end