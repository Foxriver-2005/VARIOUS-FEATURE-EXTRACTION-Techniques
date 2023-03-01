clc;
clear;
close all;
I=imread('mser.png');
figure
imshow(I)
hold on;
plot(regions,'showPixelList',true,'showEllipses',false)