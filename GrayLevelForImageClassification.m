clear;
clc;
close all;
I=imread('haris.jpeg');
glcm=graycomatrix(I,'Offset',[2 0;0 2])