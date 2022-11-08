%%Ejercicio 6c
addpath('C:\Users\EMILI\OneDrive - Alumnos Facultad de Ingenier�a - UNLP\Documentos\IPS\Octave\funciones');
T = 20;
N = 10;
t = [-T:0.05:T];
n = [-N:N];

%%Inciso a x(t) = -2sen(-0,2t + 5(pi)/3)
##x = -0.2.*t + (5.*(pi))./3;
##h = -2.*sin(x);
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al -2sen(-0,2t + 5(pi)/3)', 15, 'r', 0.1, t, h);

%%Inciso b x(t) = -2sen(-0,2n + 5(pi)/3)
##x = -0.2.*n + (5.*(pi))./3;
##h = -2.*sin(x);
##plotDiscreto('n', 'x[n]', 'Se�al -2sen(-0,2n + 5(pi)/3)', 15, 'r*-', n, h);

%%Inciso c x(t) = 1/2*(cos(2*t - pi/4))^2
##x = 2.*t - pi/4;
##h = (1/2).*((cos(x)).^2);
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al 1/2(cos(2t - pi/4))^2', 15, 'r', 0.1, t, h);

%%Inciso d x(t) = exp(j((pi/2)*t - pi))
##x = (pi/2).*t - pi;
##h = exp(x);
####plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al real(h(t))', 15, 'r*-', 0.1, t, real(h));
####plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al imag(h(t))', 15, 'r*-', 0.1, t, imag(h));
##plot3(real(h), 'r', imag(h), 'b', t, 'g');
##title('Se�al exp(j((pi/2)*t - pi))'); 

%%Inciso e x[n[ = exp(j(n/2 - pi))
##x = n./2 - pi;
##h = exp(n);
####plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al real(h(t))', 15, 'r*-', 0.1, t, real(h));
####plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al imag(h(t))', 15, 'r*-', 0.1, t, imag(h));
##stem3(real(h), imag(h), n);
##title('Se�al exp(j(n/2 - pi)'); 

%%Inciso f x(t) = 2cos(2.pi.t) + sen(10t)
##h = 2.*cos((2*pi).*t) + sin(10.*t)
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al 2cos(2.pi.t) + sen(10t)', 15, 'r', 0.1, t, h);

%%Inciso g x(t) = 2cos(2.pi.t)*sen(10t)
##h = 2.*cos((2*pi).*t).*sin(10.*t)
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al 2cos(2*pi*t)*sen(10t)', 15, 'r', 0.1, t, h);

%%Inciso h x[n] = cos(2.pi.(n^2))
##h = cos((2*pi).*(n.^2));
##plotDiscreto('n', 'x[n]', 'Se�al cos(2*pi*n^2)', 15, 'r*-', n, h);

%%Inciso i x(t) = cos(2.pi.t^2)
h = cos((2*pi).*(t.^2));
plotCompleto([t(1) t(end) -2 2], 't', 'h(t)', 'Se�al cos(2.pi.t^2)', 15, 'r', 1.5, t, h);