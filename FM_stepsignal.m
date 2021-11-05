Fs = 1000; %sampling frequency/rate
Fc = 200; %carrier frequency
T = (0:1/Fs:0.2)'; %sampling time
t = (-1:0.01:1)';
dev = 50; %freq deviation
step = t>=0;
subplot(311);
plot(step,'r')
title('Step as Message Signal');
%% Modulation
y = fmmod(step,Fc,Fs,dev); %Modulate
subplot(312);
plot(y,'g')
title('FM Modulated Step Signal');
%% Demodulation
z = fmdemod(y,Fc,Fs,dev); %Demodulate
subplot(313);
plot(z,'b')
title('FM Demodulated Step Signal');
