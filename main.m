clc
close all
clear all
[y,fs] = audioread('C:\Users\PANKAJ\Desktop\yt\angry.wav');
x=SilenceRemoval(y, fs);
subplot(3,1,1)
plot(y);
subplot(3,1,2)
plot(x)
subplot(3,1,3)
melcepst(x,fs)
