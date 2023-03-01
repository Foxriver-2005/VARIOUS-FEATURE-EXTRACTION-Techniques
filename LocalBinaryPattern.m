clc;
clear;
close all;

a=imread('bricks.jpg');
b=imread('rotatedbricks.jpg');
c=imread('carpet.jpg');
figure;
subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(b);
subplot(1,3,3);imshow(c);

brickfeatures=extractLBPFeatures(a);
rotatedbrickfeatures=extractLBPFeatures(b);
carpetfeatures=extractLBPFeatures(c);

bricks=(brickfeatures-rotatedbrickfeatures).^2;
brickscarpet=(brickfeatures-carpetfeatures).^2;

figure
bar([bricks; brickscarpet]','grouped')
title('squared error of LBP Histograms')
xlabel('LBP Histograms Bins')
legend('Bricks  vs Rotated Bricks','Bricks vs carpet')