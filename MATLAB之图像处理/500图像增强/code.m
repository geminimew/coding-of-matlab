clc
clear
close all;

% ��ͼ
img = imread('11.jpg');

%�Ҷ�ͼ����
gray = rgb2gray(img);
figure('name', 'original gray');
imshow(gray);

%��ȡ�Ҷ�ͼ ��ֱ��ͼ
[R,C]=size(gray);
% figure(2);
% imhist(I);

%ͳ�ƻҶ�
s=zeros(1,256);
for i=1:R
    for j=1:C
        s(1,gray(i,j)+1)=s(1,gray(i,j)+1)+1;
    end
end

%�����
p=zeros(1,256);
for i=1:256
    p(i)=s(i)/(R*C*1.0);
end

%�ۼ�ֱ��ͼ
c=zeros(1,256);
c(1)=p(1);
for i=2:256
    c(i)=c(i-1)+p(i);
end
%ȡ��
% c = uint8(255.*c+0.5);
c= round(255.*c);
%  ����
for i=1:R
    for j=1:C
        gray(i,j)=c(gray(i,j)+1);
    end
end
%8 ���ֱ��ͼ���⻯���ͼ��
figure('name', 'out_hisq');
imshow(gray);
% figure(4);
% imhist(I);