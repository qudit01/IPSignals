k = 0; f0 = 100+k*1200; Ts = 1/1200;
n = [0:1:12]; t = [0:Ts/1000:12*Ts];


xa = sin(2*pi*f0*t);
x = sin(2*pi*f0*n*Ts);
x2 = sin(pi*n/6);

##xa = cos(2*pi*f0*t);
##x = cos(2*pi*f0*n*Ts);
##x2 = cos(pi*n/6);

figure, plot(t, xa, n*Ts, x, 'o', n*Ts, x2, '.r')

%%Lo que sucede variando el valor de k es que la frecuencia fundamental de la señal
%%Se ve aumentada, entonces la cantidad de frecuencia que hay entre dos intervalos de
%%muestreo es mayor, por ende se pierde información.
