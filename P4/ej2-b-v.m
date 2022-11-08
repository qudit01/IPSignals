addpath('../../funciones');

T = 15;
t=[-T:.01:T];

x = j*( tri(t+10) + tri(t-10) );
plot(t,imag(x));
title("Gráfico del inciso V ejercicio 2");
xlabel("f");
ylabel("x(f)");
