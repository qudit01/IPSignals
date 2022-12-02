%% INCISO 5

%% Obtenemos la salida de filtrar la señal y con dos y 3 ramas
salida_filtrada_1 = filtrado_1_rama(y);
salida_filtrada_2 = filtrado_2_ramas(y);
salida_filtrada_3 = filtrado_3_ramas(y);

# DESCOMENTAR PARA ESCUCHAR
%% Graficamos los resultados obtenidos
figure,
subplot(3,1,1);
title('Comparación de la señal original pasa por un canal sin filtro, con la misma señal filtrada');
plot(y, 'k');
hold on;
grid on;
grid minor;
plot(salida_filtrada_1, 'r');
legend('Señal pasada por el canal, sin filtrar', 'Señal pasada por el canal, filtrada a una rama');
##sound(salida_filtrada_1(:,1), fs);

subplot(3,1,2), plot(y, 'k');
hold on;
grid on;
grid minor;
plot(salida_filtrada_2, 'm');
legend('Señal pasada por el canal, sin filtrar', 'Señal pasada por el canal, filtrada a 2 ramas');
##sound(salida_filtrada_2(:,1), fs);

subplot(3,1,3), plot(y, 'k');
hold on;
grid on;
grid minor;
plot(salida_filtrada_3, 'm');
legend('Señal pasada por el canal, sin filtrar', 'Señal pasada por el canal, filtrada a 3 ramas');
##sound(salida_filtrada_3(:,1), fs);
print -f7 -dpng figura_7