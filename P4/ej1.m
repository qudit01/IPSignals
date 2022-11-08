addpath('../../funciones');

T = 5;

%% Inciso a h(t+1)
t=[-T:.01:T];
x2 = cajon(t-1);
x1 = cajon(0.25.*(t-1));
x = 2.*x1 - x2;
plot(t,x);
title("Gráfico del inciso f ejercicio 1");
xlabel("t");
ylabel("x(t)");
plotCompleto([t(1) t(end) -2 2], 't', 'x(t)', 'Señal x(t)', 13,'r*-', 0.1, t, x);