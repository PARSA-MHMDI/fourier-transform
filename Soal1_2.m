%Soal 2_A
clc;
fs = 50;
t_end = 1;
t_start = -1;

T = abs(t_start - t_end)
ts = 1/fs
t = t_start:ts:t_end;
x2_t = rectpuls(t,1);         

figure(1)
hold on
title("Pluse Function");
xlim([-1.5,1.5]);
ylim([0,1.5]);
plot(t,x2_t,'k');
hold off


%Soal 2_B

figure(2)
y_raw = fftshift(fft(x2_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of Pulse Function");
hold on
plot(f,abs(y))
hold off

