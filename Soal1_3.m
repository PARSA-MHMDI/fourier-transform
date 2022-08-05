clc;
clear;
close all;

%Soal 3_A

fs = 50;
t_end = 1;
t_start = -1;

T = abs(t_start - t_end);
ts = 1/fs;
t = t_start:ts:t_end;
x1_t = cos(10*pi*t);
x2_t = rectpuls(t,1);
x3_t = x1_t.*x2_t;

figure(1)
hold on
title("cos(10*pi*t) * rectpuls(t,1)")
ylim([-1.5,1.5]);
xlim([-1.5,1.5]);
plot(t,x3_t)
hold off

%Soal 3_B

figure(2)
y_raw = fftshift(fft(x3_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of cos(10*pi*t) * ectpuls(t,1)");
hold on
plot(f,abs(y))
hold off
