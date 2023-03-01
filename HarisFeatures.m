clc;
clear;
close all;
a=imread('haris.jpeg');
b=rgb2gray(a);
points=detectHarrisFeatures(b);
imshow(a);
hold on;
plot(points);