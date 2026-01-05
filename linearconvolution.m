clc;
clear all;
close all;
%program for linear convolution
%to get thr input sequence
n1=input('enter the length of first sequence');
n2=input('enter the length of impulse sequence');
x=input('enter the input sequence');
h=input('enter the impulse sequence');
%convolution operation
y=conv(x,h);
%to plot the signal
subplot(3,1,1);
stem(x);
ylabel('amplitude');
xlabel('n1...>');
title('input sequence');
subplot(3,1,2);
stem(h);
ylabel('amplitude');
xlabel('n2...>');
title('impulse signal')
subplot(3,1,3);
stem(y);
ylabel('amplitude');
xlabel('n3');
disp('the resultant signal is ');y