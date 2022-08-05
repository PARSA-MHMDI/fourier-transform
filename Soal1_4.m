clc;
clear;
close all;
%Soal 4_A

fs = 100;
t_end = 1;
t_start = 0;

T = abs(t_start - t_end);
ts = 1/fs;
t = t_start:ts:t_end;
x4_t = cos(30*pi*t+(pi/4));

y_raw = fftshift(fft(x4_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);
figure(1)
title("cos(30*pi*t+(pi/4))");
hold on
plot(f,abs(y))
hold off

%Soal 4_B
tol = 1e-6;
y(abs(y) < tol) = 0;

theta = angle(y);
figure(2)
hold on
plot(f,theta/pi)
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
hold off