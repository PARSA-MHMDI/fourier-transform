%Soal 2_2 A
clc;
clear;
close all;
fs = 50;
t_end = 1;
t_start = -1;

T = abs(t_start - t_end);
ts = 1/fs;
t = t_start:ts:t_end;
N_1 = T*fs;
f = ((-fs)/2):(fs/N_1):(fs/2);
x7_t = t_start:ts:t_end;
x7_t(:) = 1;

figure(1)
hold on
title("1 Fix Funtion");
ylim([0,2]);
xlim([-1,1]);
plot(t,x7_t);
hold off

%Soal 2_1 B

figure(2)
y_raw = fftshift(fft(x7_t));
y = y_raw/max(abs(y_raw));
title("FT of Delta");
hold on;
plot(f,abs(y))
hold off

