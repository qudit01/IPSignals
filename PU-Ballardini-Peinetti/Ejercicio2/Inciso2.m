%% INCISO 2

%% Declaramos una delta de Kronecker con sus índices
indiceK = [0:1:45000];
deltaK = indiceK == 0;

%% Obtenemos la repuesta del sistema a una delta de Kronecker
hprueba = funcion_prueba(deltaK);

%% En los siguientes gráficos podemos diferenciar, la h[n] obtenidas en el inciso anterior
%% Y la h[n] cuando le ingresamos al sistema una delta de Kronecker

figure,
subplot(2,1,1), stem(n, h, '-g');
xlim([0 26459]);
title('Respuesta impulsional h');
xlabel('s');
ylabel('|H(e^(j*2*pi*s))|');

subplot(2,1,2), stem(indiceK, hprueba, '-m');
xlim([0 26459]);
title('Respuesta del sistema a una delta de Kronecker');;
xlabel('s');
ylabel('|Hprueba(e^(j*2*pi*s))|');
print -f2 -dpng figura_2
