clc;
clear;
close all;

path = '1.jpg';
img = imread(path);

figure('name', 'ԭͼ')
imshow(img);

% ----��--��--��------
gray = rgb2gray(img);
figure('name', '�Ҷ�ͼ')
imshow(gray);

% �ȸ�ʴ
[m,n] = size(gray);

fs = gray; 
for i = 2 : m-1
    for j = 2 : n-1
        con = gray(i-1:i+1, j-1:j+1);
        fs(i,j) = min(min(con));
    end
end

% ������

pz = fs;
for i = 2 : m-1
    for j = 2 : n-1
        con = fs(i-1:i+1, j-1:j+1);
        pz(i,j) = max(max(con));
    end
end

open_img = pz;
figure('name', 'open_img');
imshow(open_img);

% ------��--ñ:�ҳ������͵���һ������--------
% ԭͼ-�������ͼ
top_hat = gray - open_img;
figure('name', 'top_hat');
imshow(top_hat);

% ��ע�� ���������任˳����һ��΢����������Եõ������㡢��ñ

