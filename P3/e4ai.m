addpath('../../funciones');
N=10;
n=[-N:N];

u = escalon(n);
#plotDiscreto('n', 'u[n]', 'Se�al escalon u[n]', 15, '', n, u);


x = (0.5).^n.*u;
plotDiscreto('n', 'x[n]', 'Se�al x[n]', 15, '', n, x);
grid on
h = 4.^n.*escalon(n-2);
plotDiscreto('n', 'h[n]', 'Se�al h[n]', 15, '', n, h);