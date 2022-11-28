%% Para calcular la salida de cada sistema a una entrada dada
%% Usamos como entrada la declarada para el primer inciso
y1 = S1(x);
y2 = S2(x);
y3 = S3(x);
y4 = S4(x);

%% Graficamos
figure,
subplot(4,1,1),stem(n, y1, 'r');
title('Respuesta del S1 a la entrada x');
xlabel('n');
grid on;
grid minor;

subplot(4,1,2),stem(n, y2, 'g');
title('Respuesta del S2 a la entrada x');
xlabel('n');
grid on;
grid minor;

subplot(4,1,3),stem(n, y3, 'm');
title('Respuesta del S3 a la entrada x');
xlabel('n');
grid on;
grid minor;

subplot(4,1,4),stem(n, y4, 'c');
title('Respuesta del S4 a la entrada x');
xlabel('n');
grid on;
grid minor;
print -f8 -dpng figura_8
