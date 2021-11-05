Fs = 1000; %sampling frequency/rate
Fc = 200; %carrier frequency
T = (0:1/Fs:0.2)'; %sampling time
t = linspace(1,100,200)';
dev = 50; %freq deviation
sawtooth_wave = 1.15*square(t);
subplot(311);
plot(square_wave,'r')
title('Square Wave as Message Signal');
%% Modulation
y = fmmod(square_wave,Fc,Fs,dev); %Modulate
subplot(312);
plot(y,'g')
title('FM Modulated Sawtooth Wave');
%% Demodulation
z = fmdemod(y,Fc,Fs,dev); %Demodulate
subplot(313);
plot(z,'b')
title('FM Demodulated Sawtooth Wave');
