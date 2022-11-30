%% INCISO 3

%% Hacemos uso del comando 'audioread' para leer la información del archivo
%% 'audio.wav' y volcamos la misma en la variable fs
[x, fs] = audioread('audio.wav');

%% Procedemos a obtener la respuesta del sistema frente a la entrada de audio
y = funcion_prueba(x(:,1)) + funcion_prueba(x(:,2));
xlabel('n');
ylabel('y[n]');

%% Ahora usamos el comando 'sound' para reproducir el audio obtenido por la respuesta a esa entrada
%% Podemos escuchar ecos

# DESCOMENTAR PARA ESCUCHAR
figure,
subplot(3,1,1),
plot(x(:,1));
title('Señal del audio original (solo el canal izquierdo del audio)');
##sound(x(:,1), fs);

subplot(3,1,2),
plot(x(:,2));
title('Señal del audio original (solo el canal derecho del audio)');
##sound(x(:,2), fs);

subplot(3,1,3),
plot(y);
title('Señal del audio con eco');
print -f3 -dpng figura_3
##sound(y, fs);