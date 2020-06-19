clc;
clear all;
close all;

alp = 2;
n = 0:20;

x = 1.*(n==0) + 0.*(n>0);
y=1.*(n==0);
for k = 2:21
  y(k) = alp.*y(k-1);
end

stem(n,y);
title('impulse response');
xlabel('n');
ylabel('x[n]');