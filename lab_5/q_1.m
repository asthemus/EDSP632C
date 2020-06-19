clc;
clear all;
close all;
syms z;

x1 = tf([1 0],[1 -0.5]);
subplot(4,2,2);
pzplot(x1);
x2 = tf([1 0],[1 0.5]);
subplot(4,2,4);
pzplot(x2);
x3 = tf([1 0 0],[1 -1 0.25]);
subplot(4,2,6);
pzplot(x3);
x4 = tf([1 0 0],[1  1 0.25]);
subplot(4,2,8);
pzplot(x4);

[num den] = tfdata(x1);
sys = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
y1 = iztrans(sys);

[num den] = tfdata(x2);
sys = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
y2 = iztrans(sys);

[num den] = tfdata(x3);
sys = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
y3 = iztrans(sys);

[num den] = tfdata(x4);
sys = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
y4 = iztrans(sys);

for i=1:1:21
    n=i-10;
    temp = eval(y1);
    Y_1(i) = temp;
    temp = eval(y2);
    Y_2(i) = temp;
    temp = eval(y3);
    Y_3(i) = temp;
    temp = eval(y4);
    Y_4(i) = temp;
end
n=-10:1:10;
subplot(4,2,1);
stem(n,Y_1);
subplot(4,2,3);
stem(n,Y_2);
subplot(4,2,5);
stem(n,Y_3);
subplot(4,2,7);
stem(n,Y_4);
