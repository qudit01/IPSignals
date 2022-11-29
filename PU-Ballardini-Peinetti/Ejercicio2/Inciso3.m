%% INCISO 3

%% Hacemos uso del comando 'audioread' para leer la información del archivo
%% 'audio.wav' y volcamos la misma en la variable fs
[x, fs] = audioread('audio.wav');

%% Procedemos a obtener la respuesta del sistema frente a la entrada de audio
y = funcion_prueba(x);
xlabel('n');
ylabel('y[n]');

%% Ahora usamos el comando 'sound' para reproducir el audio obtenido por la respuesta a esa entrada
%% Podemos escuchar ecos

# DESCOMENTAR PARA ESCUCHAR
sound(x, fs);
figure,
subplot(2,1,1),
plot(x(:,1));
title('Señal del audio original (solo el canal izquierdo del audio)');

sound(y, fs);
subplot(2,1,2),
plot(y(:,1));
title('Señal del audio con eco');
print -f3 -dpng figura_3