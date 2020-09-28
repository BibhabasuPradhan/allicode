% Fourier series for noisy data
% sum of sinusoids
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 2000;             % Length of signal
t = (0:L-1)*T;        % Time vector
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t) + 0.2*sin(2*pi*25*t);
X = S+2*rand(size(t));
subplot(1,2,1)
plot(1000*t(1:50),X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')
subplot(1,2,2)
Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')