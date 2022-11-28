%% INCISO 1
%% Para empezar declaramos la función con el nro de alumno de Emilio Ballardini

[n, h] = hcanald(16773);

%% Seguido usamos el comando stem para graficar la señal generada

stem(n, h, 'r');
title('Respuesta impulsional h[n]');
xlabel('n');
ylabel('h[n]');
print -f1 -dpng figura_1