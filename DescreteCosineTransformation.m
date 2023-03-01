clc;
clear;
close all;
a=imread('wavelet.jpg');
b=dct2(a);
c=idct2(b);
subplot(1,3,1);imshow(a)
subplot(1,3,2);imshow(b);
subplot(1,3,3);imshow(c,[]);