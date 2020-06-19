clc;
clear all;
close all;

alp = 2;
beta = 2;
n=-10:10;
u = 1.*(n>=0);
x = zeros(1,20);
h = zeros(1,20);

for k=1:20
    x(k) = (alp^k).*u(k);
    h(k) = (beta^k).*u(k);
end

z = conv(x,h);

stem(z);

alp = 2;
beta = 3;
n=-10:10;
u = 1.*(n>=0);
x = zeros(1,20);
h = zeros(1,20);

for k=1:20
    x(k) = (alp^k).*u(k);
    h(k) = (beta^k).*u(k);
end

z = conv(x,h);

stem(z);