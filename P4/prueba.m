addpath('../../funciones');

T = 10;
t = [-10:0.01:10];

u = zeros(size(t));
u = escalon(t);
x = zeros(size(t));
x = exp(-3.*t).*u;
t2 = [2*t(1):2*t(end)];
##plot(t,x);

y = conv(x, u);

stem(t,x);
stem(t,u);
stem(t2,y);

