clc;
clear;
close all;

path = '1.jpg';
img = imread(path);

figure('name', 'ԭͼ')
imshow(img);

% ----------��--��--��--ͼ--��--ʴ---------
% gray = rgb2gray(img);
% figure('name', '�Ҷ�ͼ')
% imshow(gray);
% 
% [m,n] = size(gray);
% fs = gray; % ��ǰԤ���䣬�Ż��ٶ�
% for i = 2 : m-1
%     for j = 2 : n-1
%         % con��ѡ��3*3��С�ľ������Ȼ��ʴ
%         con = gray(i-1:i+1, j-1:j+1);
%         fs(i,j) = min(min(con));
%         
%     end
% end
% 
% figure('name', 'fs');
% imshow(fs);

%------------��--��--ɫ--ͼ-------------
r = img(:, :, 1);
g = img(:, :, 2);
b = img(:, :, 3);

[m, n] = size(r);

r_out = r;
for i = 2 : m-1
    for j = 2 : n-1
        con = r(i-1:i+1, j-1:j+1);
        r_out(i,j) = min(min(con));
    end
end

g_out = g;
for i = 2 : m-1
    for j = 2 : n-1
        con = g(i-1:i+1, j-1:j+1);
        g_out(i,j) = min(min(con));
    end
end

b_out = b;
for i = 2 : m-1
    for j = 2 : n-1
        con = b(i-1:i+1, j-1:j+1);
        b_out(i,j) = min(min(con));
    end
end

out = cat(3, r_out, g_out, b_out);

figure('name', 'fs_color');
imshow(out);
