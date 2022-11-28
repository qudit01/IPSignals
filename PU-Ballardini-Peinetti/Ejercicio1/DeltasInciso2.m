h_1 = [0,0,0,0,0.5,0.5,0,0,0];
h_2 = [0,0,0,0,0.5,-0.5,0,0,0];
h_3 = [0,0,0,0,0.25,0.375,0.1875,0.09375,0.046875];
h_4 = [0,0,0,0,0.25,-0.375,0.1875,-0.09375,0.046875];

figure,
subplot(4,1,1), stem(indice_delta, h_1, 'r');
title('Respuesta impulsional de S1');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,2), stem(indice_delta, h_2, 'g');
title('Respuesta impulsional de S2');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,3), stem(indice_delta, h_3, 'm');
title('Respuesta impuslional de S3');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;


subplot(4,1,4), stem(indice_delta, h_4, 'c');
title('Respuesta impulsional de S4');
xlabel('n');
ylabel('h[n]');
grid on;
grid minor;
