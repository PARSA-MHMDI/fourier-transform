% This file is solve of question 1

% Soal 1 - A

fs = 50;
t_end = 1;
t_start = -1;

T = abs(t_start - t_end)
ts = 1/fs
t = t_start:ts:t_end;
x1_t = cos(10*pi*t);

figure(1)
hold on
title("cos(10*pi*t)")
ylim([-1.5,1.5]);
xlim([-1.5,1.5]);
plot(t,x1_t)
hold off

%soal 1_B

figure(2)
y_raw = fftshift(fft(x1_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of cos(10*pi*t)");
hold on
plot(f,abs(y))
hold off








