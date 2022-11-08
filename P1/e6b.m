addpath('C:\Users\EMILI\OneDrive - Alumnos Facultad de Ingeniería - UNLP\Documentos\IPS\Octave\funciones');
N=10;
ax=[-N:1:N];
axis([ax(1) ax(end) -2 2]);

##stem(n, [zeros(1,N) 1 zeros(1,N)]);
##stem(n+1, [zeros(1,N) 1 zeros(1,N)]);
##stem(n+2, [zeros(1,N) 1 zeros(1,N)]);
##stem(n+3, [zeros(1,N) 1 zeros(1,N)]);
##stem(n+4, [zeros(1,N) 1 zeros(1,N)]);
##stem(n, h, 'r*-');
##title('Señal h[n]');
##set(gca,'FontSize', 13); % Tamaño de letra para la leyenda y ejes.
##xlabel('n', 'Interpreter', 'Latex'); % Nombro el eje x.
##ylabel('h[n]', 'Interprete', 'Latex'); % Nombro el eje y.
%% Función original x[n]
##h = cajon((n - 2)/5); %función original
##plotDiscreto('n', 'h[n]', 'Señal x[n]', 15, 'r*-', n, h);

##%% Inciso a x[n-1]
##n=[-1:1:7];
##h = cajon2(n - 1);
##plotDiscreto('n', 'x[n-1]', 'Señal x[n-1]', 15, 'r*-', n, h);

##%% Inciso b x[2n]
##n=[-1:1:7];
##h = cajon2(2.*n);
##plotDiscreto('n', 'x[2n]', 'Señal x[2n]', 15, 'r*-', n, h);

##%% Inciso c x[n^2]
##n=[-7:1:7];
##h = cajon2(n.^2);
##plotDiscreto('n', 'x[n^2]', 'Señal x[n^2]', 15, 'r*-', n, h);

##%% Inciso d x[(-1).*n - 3]
##n=[-10:1:10];
##h = cajon2((-1).*n - 3);
##plotDiscreto('n', 'x[(-1).*n - 3]', 'Señal x[(-1).*n - 3]', 15, 'r*-', n, h);

##%% Inciso e Impar{x[n]}
##n=[-10:1:10];
##h = (cajon2(n) - cajon2((-1).*n))./2;
##plotDiscreto('n', 'Impar{x[n]}', 'Señal Impar{x[n]}', 15, 'r*-', n, h);

##%% Inciso f Par{x[n]}
##n=[-10:1:10];
##h = (cajon2(n) + cajon2((-1).*n))./2;
##plotDiscreto('n', 'Par{x[n]}', 'Señal Par{x[n]}', 15, 'r*-', n, h);

##%% Inciso g x[n/2]}
##n=[-10:1:10];
##h = cajon2(n./2).*(mod(n,2) == 0);
##plotDiscreto('n', 'x[n/2]', 'Señal x[n/2]', 15, 'r*-', n, h);