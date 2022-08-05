%Soal 5_A
clc;
clear all;
close all;
fs = 50;    
t_end = 10;
t_start = -10;

T = abs(t_start - t_end);
ts = 1/fs;
t = t_start:ts:t_end;
N_1 = T*fs;
f = ((-fs)/2):(fs/N_1):(fs/2);
d = [-9:1:9];
x5_t = pulstran(t,d,@rectpuls,0.5);

figure(1)
hold on
ylim([0,1.5]);
xlim([-12,12]);
plot(t,x5_t);
hold off

%Soal 5_B

figure(2)
y_raw = fftshift(fft(x5_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

figure(2)
title("FT of cos(10*pi*t) * ectpuls(t,1)");
hold on;
ylim([-0.5,1]);
xlim([-10,10]);
plot(f,abs(y))
hold off

