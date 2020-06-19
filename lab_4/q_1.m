clc;
clear all;
close all;
syms z n;
x = (4*z + 3)/(2*(z^3) - 3.4*(z^2) + 1.98*z - 0.406);
y = partfrac(x,'FactorMode','full');
disp('partial fraction of x:');
disp(y);
b = [4 3];
a = [2 -3.4 1.98 -0.406];
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