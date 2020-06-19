clc;
clear all;
close all;

syms n z;
x = 2^(n+1) + 4*((1/2)^n);

%subplot(2,2,1);
%stem(n,x);
%title('x[n]');
%xlabel('n');
%ylabel('x[n]');
h = ztrans(ax,n,z);

s = x.*(z^(-n));
y = symsum(s,n,-Inf,Inf);
disp(y);
disp(h);