clc;
clear all;
close all;
syms z;

x1 = tf([1 0 0],[1 -2 1]);
subplot(2,1,1);
pzplot(x1);

[num den] = tfdata(x1);
sys = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
y1 = iztrans(sys);

for i=1:1:21
    n=i-10;
    temp = eval(y1);
    Y_1(i) = temp;
end

n=-10:1:10;
subplot(2,1,2);
stem(n,Y_1);
