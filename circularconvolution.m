clc;
clear all;
close all;
%circular convolution
x=[1 2 3 4];
y=[5 6 7 8];
z=cconv(x,y,4);
disp(z);
subplot(3,1,1);
stem(x);
grid on;
subplot(3,1,2);
stem(y);
grid on;
subplot(3,1,3);
stem(z);
grid on;
disp(z);