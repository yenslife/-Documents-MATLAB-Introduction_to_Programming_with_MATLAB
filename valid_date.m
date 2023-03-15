function logical = valid_date(year, month, day)

% scalar check
if ~isscalar(month) || ~isscalar(day) || ~isscalar(year)
    logical = false;
    return
end

logical = true;
a = year / 4; 
b = year / 100; 
c = year / 400;
m = [31 28 31 30 31 30 31 31 30 31 30 31];
leap = false;
if (a == fix(a) && b ~= fix(b)) || c == fix(c)
    leap = true;
end

if leap
    m(2) = 29;
end

if month > length(m) || month < 1 || day < 1 || m(month) < day 
    logical = false;
end

end