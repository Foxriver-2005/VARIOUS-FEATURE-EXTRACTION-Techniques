clc;
clear;
close all;
figure;
I=imread('haris.jpeg');
I =rgb2gray(I);
corners=detectMinEigenFeatures(I);
imshow(I);
hold on;
plot(corners);