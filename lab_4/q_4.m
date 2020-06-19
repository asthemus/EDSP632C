clc;
clear all;
close all;
syms z n;
x = (1 + z^(-1) + 2*(z^(-2)))/(1 - 0.25*(z^(-2)));
y = partfrac(x,'FactorMode','full');
disp('partial fraction of x:');
disp(y);
b = [1 1 2];
a = [1 0 -0.25];
[r p k] = residuez(b,a);
zplane(b,a);
hold on
plot(p,'^r')
hold off
[bn an]  = residuez(r,p,k);
len = length(r);
x=0;
for i=1:1:len
    x = x + r(i)*(p(i).^(n));
end
disp('inverse z-transform of x:');
disp(x);