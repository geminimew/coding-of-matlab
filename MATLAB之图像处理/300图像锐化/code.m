clc;
clear;
close all;

img = imread('3.jpg');

figure('name', 'ԭͼ');
% imshow(img);

gray = rgb2gray(img);
% figure("Name",'gray');
imshow(gray);

[m, n] = size(gray);

% Ԥ��þ����С
x_sobel = double(gray);
y_sobel = double(gray);
for i = 2:m-1
    for j = 2:n-1
        % �ֱ���x��y��������Ӽ���Ե��Ȼ��ϳ�
        % x_con = [-1,0,1; -2,0,2; -1,0,1];
        % y_con = [-1,-2,-1; 0,0,0; 1,2,1];
        x_sobel(i,j) = (-1*gray(i-1, j-1) + gray(i-1, j+1) ... % ����ʡ�Ժű�ʾ������һ��
            -2*gray(i, j-1) + 2*gray(i, j+1) ...
            -1*gray(i+1, j-1) + gray(i+1, j+1));
        
        y_sobel(i, j) = (-1*gray(i-1, j-1) - 2*gray(i-1, j) - gray(i-1, j+1) ...
            +gray(i+1, j-1) + 2*gray(i+1, j) + gray(i+1, j+1));
    end
end
img_sobel = sqrt(x_sobel.^2 + y_sobel.^2);
figure('name', 'img_sobel');
imshow(uint8(img_sobel));
% imshow(img_sobel);
