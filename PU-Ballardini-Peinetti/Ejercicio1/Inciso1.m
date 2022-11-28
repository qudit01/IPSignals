%% INCISO 1
%% Definimos la señal con el número de alumno de Emilio Ballardini
[n,x]= senial(16773);
%% Graficamos y añadimos labels a cada eje
stem (n, x, 'r');
title('Señal 1');
xlabel('n');
ylabel('x[n]');
print -f1 -dpng figura_1
grid on;
grid minor;

%% El próximo paso es calcular su TFTD
%% Para eso nos hacemos uso de un script
[X,s] = TFTD(x,n);

%% Graficamos su módulo y fase con las funciones abs(X) y angle (X)
figure,
subplot(2,1,1),
plot(s, abs(X), 'b');
xlim([-0.5, 0.5]);
title('|X(e(j.2.pi.s))|');

subplot(2,1,2),
plot(s, angle(X), 'k');
xlim([-0.5, 0.5]);
title('Fase de X(e(j.2.pi.s))');
print -f2 -dpng figura_2