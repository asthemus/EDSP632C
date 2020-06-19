clc;
clear all;
close all;
syms z n;
x = (3*(z^4) - 11*(z^3) + 0.88*(z^2) -2.396*z + 1.348)/(z^3 - 0.7*(z^2) - 0.14*z + 0.048);
y = partfrac(x,'FactorMode','full');
disp('partial fraction of x:');
disp(y);
b = [3 -11 0.88 -2.396 1.348];
a = [1 -0.7 -0.14 0.048];
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