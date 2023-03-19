function output = blur(img,w)

s_edge = 2 * w + 1;

[row, col] = size(img);
new_img = ones(size(img), 'uint8');
%new_img = (img * 0)

for i = 1:row
    for j = 1:col
        new_img = blur_square(img, i, j, w, new_img);
    end
end
output = new_img;
end

function [output] = blur_square(img, i, j, w, new_img)
[row, col] = size(img);
start_row = i - w;
end_row = i + w;
start_col = j - w;
end_col = j + w;

if start_row <= 1
    start_row = 1;
end

if start_col <= 1
    start_col = 1;
end

if end_row >= row
    end_row = row;
end

if end_col >= col
    end_col = col;
end

matrix = img(start_row:end_row,start_col:end_col);

summa = mean(matrix, 'all');

new_img(i,j) = summa;

output = new_img;

end


% usage
% img = imread('vandy.png');
% output = blur(img,2);
% imshow(output);