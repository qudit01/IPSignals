%% INCISO 3
%% Ahora calculamos sus respuestas en frecuencias de manera analitica,
%% utilizamos la expresion Y(e^j2\pi*s)=H(e^j2\pi*s)X(e^j2\pi*s) y despejamos H(e^j2\pi*s)
H1a = 0.5 + 0.5.*exp((-1)*i*2*pi*s);
H2a = 0.5 - 0.5.*exp((-1)*i*2*pi*s);
H3a = (0.25+0.25.*exp((-1)*i*2*pi*s))./(1-0.5.*exp((-1)*i*2*pi*s));
H4a = (0.25-0.25.*exp((-1)*i*2*pi*s))./(1+0.5.*exp((-1)*i*2*pi*s));

%TDTD de las respuestas impulsionales
H1 = TFTD(h1, indice_delta);
H2 = TFTD(h2, indice_delta);
H3 = TFTD(h3, indice_delta);
H4 = TFTD(h4, indice_delta);

%Para comprar ambas respuestas H de cada sistema, las graficaremos en el
%mismo eje.
figure,
subplot(2,1,1),plot(s, abs(H1), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de los modulos de la H1(F) analitica vs TFTD[h1]');
xlabel('s');
ylabel('|H(e^(j*2*pi*s))|');
grid on;
grid minor;
hold on;
plot(s, abs(H1a),' -.k');
xlim([-0.5, 0.5]),
grid on;
grid minor;
legend('|H1|', '|H1a|');

subplot(2,1,2),plot(s, angle(H1), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de las fases de la H1(F) analitica vs TFTD[h1]');
xlabel('s');
grid on;
grid minor;
hold on;
plot(s, angle(H1a),' -.k');grid on; grid minor;
xlim([-0.5, 0.5]),
legend('Fase de la H1', 'Fase de la H1a');
print -f4 -dpng figura_4

figure,
subplot(2,1,1),plot(s, abs(H2), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de los modulos de la H2(F) analitica vs TFTD[h2]');
xlabel('s');
ylabel('|H(e^(j*2*pi*s))|');
grid on;
grid minor;
hold on;
plot(s, abs(H2a),' -.k');
xlim([-0.5, 0.5]),
grid on;
grid minor;
legend('|H2|', '|H2a|');

subplot(2,1,2),plot(s, angle(H2), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de las fases de la H2(F) analitica vs TFTD[h2]');
xlabel('s');
grid on;
grid minor;
hold on;
plot(s, angle(H2a),' -.k');grid on; grid minor;
xlim([-0.5, 0.5]),
legend('Fase de la H2', 'Fase de la H2a');
print -f5 -dpng figura_5


figure,
subplot(2,1,1),plot(s, abs(H3), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de los modulos de la H3(F) analitica vs TFTD[h3]');
xlabel('s');
ylabel('|H(e^(j*2*pi*s))|');
grid on;
grid minor;
hold on;
plot(s, abs(H3a),' -.k');
xlim([-0.5, 0.5]),
grid on;
grid minor;
legend('|H3|', '|H3a|');

subplot(2,1,2),plot(s, angle(H3), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de las fases de la H3(F) analitica vs TFTD[h3]');
xlabel('s');
grid on;
grid minor;
hold on;
plot(s, angle(H3a),' -.k');grid on; grid minor;
legend('Fase de la H3', 'Fase de la H3a');
print -f6 -dpng figura_6

figure,
subplot(2,1,1),plot(s, abs(H4), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de los modulos de la H4(F) analitica vs TFTD[h4]');
xlabel('s');
ylabel('|H(e^(j*2*pi*s))|');
grid on;
grid minor;
hold on;
plot(s, abs(H4a),'-.k');
grid on;
grid minor;
legend('|H4|', '|H4a|');

subplot(2,1,2),plot(s, angle(H4), '-r');
xlim([-0.5, 0.5]),
title('Comparacion de las fases de la H4(F) analitica vs TFTD[h4]');
xlabel('s');
grid on;
grid minor;
hold on;
plot(s, angle(H4a),'-.k');grid on; grid minor;
legend('Fase de la H4', 'Fase de la H4a');
print -f7 -dpng figura_7
