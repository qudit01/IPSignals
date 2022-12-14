%% INCISO 5

%% Obtenemos la salida de filtrar la señal y con dos y 3 ramas
salida_filtrada_1 = filtrado_1_rama(y);
salida_filtrada_2 = filtrado_2_ramas(y);
salida_filtrada_3 = filtrado_3_ramas(y);

%% Graficamos los resultados obtenidos
figure,
subplot(2,1,1), plot(salida_filtrada_2, 'g');
title('Filtro con dos ramas');

subplot(2,1,2), plot(y, 'k');
title('Señal original');
sound(salida_filtrada_2, fs);
print -f7 -dpng figura_7

figure,
subplot(2,1,1), plot(salida_filtrada_3, 'm');
title('Filtro con 3 ramas');

subplot(2,1,2), plot(y, 'k');
title('Señal original');
sound(salida_filtrada_3, fs);
print -f8 -dpng figura_8

figure,
subplot(2,1,1), plot(salida_filtrada_1, 'r');
title('Filtro con una rama');

subplot(2,1,2), plot(y, 'k');
title('Señal original');
sound(salida_filtrada_1, fs);
print -f9 -dpng figura_9