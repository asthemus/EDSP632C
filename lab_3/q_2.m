clc;
clear all;
close all;

syms n z;
tf z;
sys = tf([1, 1],[1, -2, 3]);
%x = (z^(-2) + z^(-1))/(1 - 2*(z^(-1)) + 3*(z^(-2)));
pzmap(sys);