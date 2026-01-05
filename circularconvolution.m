clc;
clear all;
close all;
%circular convolution
x=[1 2 3 4];
y=[5 6 7 8];
z=cconv(x,y,4);
disp(z);
subplot(2,1,1);
stem(z);
grid on;