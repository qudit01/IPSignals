%% Aplicamos la TFTD a las respuestas de los sistemas S a la señal x y las graficamos
Y1 = TFTD(y1, n);
Y2 = TFTD(y2, n);
Y3 = TFTD(y3, n);
Y4 = TFTD(y4, n);

figure,
subplot(2,1,1), plot(s, abs(Y1), 'r');
xlim([-0.5 0.5]),
title('Modulo de la TFTD de la salida del S1');
xlabel('s');
ylabel('|Y1(e^(j*2*pi*s))|');
grid on;
grid minor;

subplot(2,1,2), plot(s, angle(Y1), 'r');
xlim([-0.5 0.5]),
title('Fase de la TFTD de la salida del S1');
xlabel('s');
grid on;
grid minor;
print -f9 -dpng figura_9

figure,
subplot(2,1,1), plot(s, abs(Y2), 'r');
xlim([-0.5 0.5]),
title('Modulo de la TFTD de la salida del S2');
xlabel('s');
ylabel('|Y2(e^(j*2*pi*s))|');
grid on;
grid minor;

subplot(2,1,2), plot(s, angle(Y2), 'r');
xlim([-0.5 0.5]),
title('Fase de la TFTD de la salida del S2');
xlabel('s');
grid on;
grid minor;
print -f10 -dpng figura_10

figure,
subplot(2,1,1), plot(s, abs(Y3), 'r');
xlim([-0.5, 0.5]),
title('Modulo de la TFTD de la salida del S3');
xlabel('s');
ylabel('|Y3(e^(j*2*pi*s))|');
grid on;
grid minor;

subplot(2,1,2), plot(s, angle(Y3), 'r');
xlim([-0.5, 0.5]),
title('Fase de la TFTD de la salida del S3');
xlabel('s');
grid on;
grid minor;
print -f11 -dpng figura_11

figure,
subplot(2,1,1), plot(s, abs(Y4), 'r');
xlim([-0.5, 0.5]),
title('Modulo de la TFTD de la salida del S4');
xlabel('s');
ylabel('|Y4(e^(j*2*pi*s))|');
grid on;
grid minor;

subplot(2,1,2), plot(s, angle(Y4), 'r');
xlim([-0.5, 0.5]),
title('Fase de la TFTD de la salida del S4');
xlabel('s');
grid on;
grid minor;
print -f12 -dpng figura_12
