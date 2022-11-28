%% INCISO 2
%% Para el cálculo de la h[n] de cada ecuación en diferencia
%% declaramos una delta de Kronecker con sus índices
Q=4;
delta = [0,0,0,0,1,0,0,0,0];
indice_delta = -Q:Q;
delta = indice_delta==0;

%% Declaramos las respuestas como los sistemas con la delta declarada como entrada
h1 = S1(delta);
h2 = S2(delta);
h3 = S3(delta);
h4 = S4(delta);

%% Descomentar para ver la gráfica de las h[n] calculadas de manera analítica
%% DeltasInciso2

%% Procedemos a graficar
figure,
subplot(4,1,1), stem(indice_delta, h1);
xlim([-4, 4]);
title('Respuesta impulsional de S1');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,2), stem(indice_delta, h2);
xlim([-4, 4]);
title('Respuesta impulsional de S2');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,3), stem(indice_delta, h3);
xlim([-4, 4]);
title('Respuesta impuslional de S3');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,4), stem(indice_delta, h4);
xlim([-4, 4]);
title('Respuesta impulsional de S4');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;
print -f3 -dpng figura_3
