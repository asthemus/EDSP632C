clc;
clear all;
close all;

f = -pi:pi/1000:pi;

aa=[1,-1.618,1];
bb=[1,-1.5161,0.878];
sys = freqz(aa,bb,f);
magnitude=abs(sys);
phase=angle(sys);
subplot(1,2,1)
plot(f,magnitude)
title('Magnitude response');
subplot(1,2,2);
plot(f,phase)
title('Phase response')


