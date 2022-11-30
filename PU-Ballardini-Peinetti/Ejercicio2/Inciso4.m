%% INCISO 4

%% Obtenemos la repuesta del sistema a una delta de Kronecker
f = funcion_prueba(deltaK);
%% Obtenemos dos sistemas de la señal original, pasando por un filtro de 2 ramas
%% y por uno de 3 ramas
respuesta_filtrada_1 = filtrado_1_rama(f);
respuesta_filtrada_2 = filtrado_2_ramas(f);
respuesta_filtrada_3 = filtrado_3_ramas(f);

%% Graficamos los resultados obtenidos
figure,
subplot(2,1,1),
stem(respuesta_filtrada_1, '-r');
xlim([0 45000]);
title('Filtrado con una rama');

subplot(2,1,2),
stem(f, '-k');
xlim([0 45000]);
title('Señal sin filtro');
print -f4 -dpng figura_4

figure,
subplot(2,1,1),
stem(respuesta_filtrada_2, '-g');
xlim([0 45000]);
title('Filtrado con dos ramas');

subplot(2,1,2),
stem(f, '-k');
xlim([0 45000]);
title('Señal sin filtro');
print -f5 -dpng figura_5

figure,
subplot(2,1,1),
stem(respuesta_filtrada_3, '-m');
xlim([0 45000]);
title('Filtrado con 3 ramas');

subplot(2,1,2),
stem(f, '-k');
xlim([0 45000]);
title('Señal sin filtro');
print -f6 -dpng figura_6
