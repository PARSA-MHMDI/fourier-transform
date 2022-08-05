%Soal 0
fs = 20;
t_end = 1;
t_start = 0;

T = abs(t_start - t_end)
ts = 1/fs
t = t_start:ts:t_end;
x01_t = exp(i*(2*pi)*5*t)+exp(i*(2*pi)*8*t);

figure(1)
y_raw = fftshift(fft(x01_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of exp(i*(2*pi)*5*t)+exp(i*(2*pi)*8*t)");
hold on
plot(f,abs(y))
hold off

%Now I test new function

x02_t = exp(i*(2*pi)*5*t)+exp(i*(2*pi)*5.1*t);

figure(2)
y_raw = fftshift(fft(x02_t));
y = y_raw/max(abs(y_raw));

N_1 = T*fs;

f = ((-fs)/2):(fs/N_1):(fs/2);

title("FT of exp(i*(2*pi)*5*t)+exp(i*(2*pi)*5.1*t)");
hold on
plot(f,abs(y))
hold off
