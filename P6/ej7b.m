k = 5; Ts = 1/5000; f0 = 100*k; n = [0:1:100];
x = sin(2*pi*f0*n*Ts);
figure, plot(n, x, '.-')