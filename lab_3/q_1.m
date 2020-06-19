clc;
clear all;
close all;

t=0:1:100;

syms n z;
x1 = ((0.25)^n);
x2 = ((1/16)^n) + ((1/2)^n);
x3 = 2^(n+1) + 4*((1/2)^n);

%subplot(2,2,1);
%stem(n,x);
%title('x[n]');
%xlabel('n');
%ylabel('x[n]');
h1 = ztrans(x1,n,z);
h2 = ztrans(x2,n,z);
h3 = ztrans(x3,n,z);

s1 = x1.*(z^(-n));
s2 = x2.*(z^(-n));
s3 = x3.*(z^(-n));

y1 = symsum(s1,n,0,Inf);
y2 = symsum(s2,n,0,Inf);
y3 = symsum(s3,n,0,Inf);

disp('z-transform for x1[n]:');
disp('y1[Z]:');
disp(y1);
disp('');
disp('h1[z]:')
disp(h1);

disp('z-transform for x2[n]:');
disp('y2[Z]:');
disp(y2);
disp('');
disp('h2[z]:')
disp(h2);


disp('z-transform for x3[n]:');
disp('y3[Z]:');
disp(y3);
disp('');
disp('h3[z]:')
disp(h3);


