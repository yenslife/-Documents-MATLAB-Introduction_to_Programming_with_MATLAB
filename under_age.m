function too_young = under_age(age, limit)
% if limit not provided
if nargin < 2
    limit = 21;
    %error("拉拉拉拉" + ...
    %    "拉拉");
end
if nargin == 0
    error("要記得輸入ㄛ %d", nargin);
end

if age < limit
    too_young = true;
else 
    too_young = false;
end