Fs = 1000; %sampling frequency/rate
Fc = 200; %carrier frequency
T = (0:1/Fs:0.2)'; %sampling time
t = (-1:0.01:1)';
dev = 50; %freq deviation
unitstep = t>=0;
ramp = t.*unitstep;
subplot(311);
plot(ramp,'r')
title ('Ramp as Message Signal');
%%Modulation
y = fmmod(ramp,Fc,Fs,dev); %modulate
subplot(312);
plot(y,'g');
title ('FM Modulated Ramp Signal');
%%Demodulation
z = fmdemod(y,Fc,Fs,dev); %demodulate
subplot(313);
plot(z,'b')
title ('FM Demodulated Ramp Signal');



