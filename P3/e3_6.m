addpath('../../funciones')

T=10

t=[-T:0.01:T]

h = 2.*tri(t-1/2);
h2 = 2.*tri(t+1/2);
h3 = h2-h;
plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Señal 2h(t-1/2) - 2h(t+1/2)', 13,'r*-', 0.1, t, h3);