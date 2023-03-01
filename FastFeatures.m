clc;
clear;
close all;
I=imread('haris.jpeg');
I=rgb2gray(I)
corners=detectFASTFeatures(I);
imshow(I);
hold on;
plot(corners);
