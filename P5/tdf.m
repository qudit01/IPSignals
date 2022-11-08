%% =================================================================
%% TRANSFORMADA DISCRETA DE FOURIER
%% =================================================================

clear;

h = load("../datos/wavelet");
N = length(h) ;
dw = 2*pi/N ;


% Esto equivale a:   H = fft(h) ;
for k = 0:N-1
  H(k+1) = 0 ;
  wk = dw*k ;
  for n = 0:N-1
    H(k+1) = H(k+1) + h(n+1)*exp(-1i*wk*n) ;
  end
end

% Esto equivale a:   h = ifft(H) ;
for n = 0:N-1
  g(n+1) = 0 ;
  wn = dw*n ;
  for k = 0:N-1
    g(n+1) = g(n+1) + H(k+1)*exp(1i*wn*k) ;
  end
  g(n+1) = g(n+1)/N ;
end



% Graficos



% En tiempo
subplot(3,1,1)
plot(h,';Ondicula original;bo') ; hold on
plot(real(g),';Ondicula antitransformada;rx'); hold off
ylabel('h[n]')

% Espectro de amplitud
subplot(3,1,2)
stem(abs(H),';Espectro de Amplitud;bo')
ylabel('H[n]')

% Espectro de fase
subplot(3,1,3)
plot(arg(H),';Espectro de fase;go')
ylabel('phi[n]')
xlabel('n')


% Puede probar, por ejemplo que

% H(2) % equivale a:
% abs(H(2))*exp(i*arg(H(2)))



% Guardo un .eps con el gráfico generado:
%print('tdf.eps','-deps');
