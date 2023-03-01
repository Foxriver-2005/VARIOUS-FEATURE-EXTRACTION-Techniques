clc;
clear;
close all;
a=imread('HoG.bmp');
[hog1,visualization]=extractHOGFeatures(a,'CellSize',[4 4]);
[hog2,visualization2]=extractHOGFeatures(a,'CellSize',[2 2]);
plot(visualization);
figure;
plot(visualization2);