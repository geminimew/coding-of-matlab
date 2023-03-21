clc;
clear;
close all;

path = '1.jpg';
img = imread(path);

figure('name', 'ԭͼ')
imshow(img);

% ���ͣ�����ԻҶ�ͼ��ʴ����������ͼ��ͬ��
gray = rgb2gray(img);
figure('name', '�Ҷ�ͼ')
imshow(gray);

[m,n] = size(gray);
pz = gray; % ��ǰԤ���䣬�Ż��ٶ�
for i = 2 : m-1
    for j = 2 : n-1
        % con��ѡ��3*3��С�ľ������Ȼ��ʴ
        con = gray(i-1:i+1, j-1:j+1);
        % һ��max��ÿ����󣬶������������
        pz(i,j) = max(max(con));
        
    end
end

figure('name', 'fs');
imshow(pz);