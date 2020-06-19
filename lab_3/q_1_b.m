clc;
clear all;
close all;

t=0:1:100;

syms n z;
x =  ((1/16)^n) + ((1/2)^n);

%subplot(2,2,1);
%stem(n,x);
%title('x[n]');
%xlabel('n');
%ylabel('x[n]');
h = ztrans(x,n,z);

s = x.*(z^(-n));
y = symsum(s,n,0,Inf);
disp(y);
disp(h);




