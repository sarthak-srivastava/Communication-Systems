t = linspace(-9,9,1000);
x1 = (t>=-.5) - (t>=.5);
x2 = (t+1).*(t>=-1).*(t<0) + (1-t).*(t>=0).*(t<1);
figure(1) 
plot(t,x1,t,x2)
axis([-9 9 0 1.5])
xlabel('time')
ylabel('signal')
title('time domain')
grid on

fftx1 = abs(fftshift(fft(x1)))/(1000/18);
fftx2 = abs(fftshift(fft(x2)))/(1000/18);

figure(2)
plot(t,fftx1,t,fftx2)
axis([-9 9 0 1.5])
grid on
xlabel('frequency')
ylabel('magnitude spectra')
title('Frequency Domain')