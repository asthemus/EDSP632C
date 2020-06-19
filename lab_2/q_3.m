clc;
clear all;
close all;
n = -10:10;
x = 0 + 1.*(n>=0);
x1 = 0 + 1.*(n>=-1);
y = x.*(n>=1) + 0 + x1.*(n<=-1);
subplot(4,2,1);
stem(n,y);
title('y[n]');



