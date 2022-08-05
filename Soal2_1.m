%Soal 2_1 A
clc;
clear all;
close all;
fs = 50;
t_end = 1;
t_start = -1;

T = abs(t_start - t_end);
ts = 1/fs;
t = t_start:ts:t_end;
N_1 = T*fs;
f = ((-fs)/2):(fs/N_1):(fs/2);
x6_t = dirac(t);
idx = x6_t == Inf
x6_t(idx) = 1;

figure(1)
hold on
title("Delta Function");
ylim([0,1.5]);
xlim([-1,1]);
stem(t,x6_t);
hold off

%Soal 2_1 B
figure(2)
y_raw = fftshift(fft(x6_t));
y = y_raw/max(abs(y_raw));
N_1 = T*fs;
f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of Delta");
hold on;
plot(f,abs(y))
hold off

