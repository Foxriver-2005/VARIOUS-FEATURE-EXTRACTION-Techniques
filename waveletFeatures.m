clc;
clear;
close all;

a=imread('wavelet.jpg');

[LL LH HL HH]=dwt2(a,'haar');
[LL2 LH2 HL2 HH2]=dwt2(LL,'haar');
[LL3 LH3 HL3 HH3]=dwt2(LL2,'haar');
[LL4 LH4 HL4 HH4]=dwt2(LL3,'haar');
[LL5 LH5 HL5 HH5]=dwt2(LL4,'haar');
[LL6 LH6 HL6 HH6]=dwt2(LL5,'haar');

Dec3=[LL3,LH3;HL3 HH3];
Dec2=[LL2,LH2;HL2 HH2];

Dec=[Dec2,LH;HL HH];
subplot(1,2,1);imshow(a);

subplot(1,2,2);imshow(Dec,[]);
figure;imshow(LL6,[]);