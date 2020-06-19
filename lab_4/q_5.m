clc;
clear all;
close all;
syms z n;
x = (8 - 4*(z^(-1)))/(8 + 6*(z^(-1)) + z^(-2));
y = partfrac(x,'FactorMode','full');
disp('partial fraction of x:');disp(y);
b = [8 -4];
a = [8 6 1];
[r p k] = residuez(b,a);
zplane(b,a);
hold on
plot(p,'^r')
hold off
len = length(r);
x=0;
for i=1:1:len
    x = x + r(i)*(p(i).^(n));
end
disp('partial fraction of x:');
disp(x);