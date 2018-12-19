clc
clear
close all

nx=7;ny=9;
mat1=[];mat2=[];
tic;

for i = 1:nx
    for j= 1:ny
        k = strcat(int2str(i),int2str(j),'.bmp');
        mat1=[mat1;rgb2gray(imread(k))];
    end
        mat2=[mat2,mat1];
        mat1=[];
end

image_full=mat2;
imshow(image_full);

toc
imwrite(image_full,'image_full.bmp'); 
