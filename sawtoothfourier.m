%Code for plotting increasingly better approximations for the saw-toothed
%wave by using Fourier series. The Fourier series for swa-toothed wave is
%given by s(x)= 1/2 - 1/pi*sum(n=1,2,3...,Inf) 
%2*L is the period for the saw-tooth wave.
%Fourier series for swatooth: 1/n*sin(n*pi*x/L)
n_terms= 50;
L = 10;
x = 0:0.01:2*L;
saw_wave = zeros(length(x),1);
fourier_term = zeros(length(x),1);
i=1;
k=0;
while k<n_terms
    fourier_terms = 1/i*sin(i*pi*x'/L);
    saw_wave = saw_wave + fourier_term;
    i=i+1;
    k=k+1;
    plot(x,fourier_term)
    hold on
end
saw_wave = 1/pi*saw_wave;
plot(x,saw_wave,'k-','linewidth',3)
xlabel('x');
ylabel('s(x)');
set(gca,'Fontsize',16)