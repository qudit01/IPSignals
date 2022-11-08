addpath('../../funciones');

T = 6;
t=[-T:.01:T];

%% Inciso 3 
##x1 = cajon(t-1);
##x2 = tri((t+1)./2);7
##x = x1 + x2;
##plot(t,x);
##title("Gráfico del inciso f ejercicio 1");
##xlabel("t");
##ylabel("x(t)");
%%plotCompleto([t(1) t(end) -2 2], 't', 'x(t)', 'Señal x(t)', 13,'r*-', 0.1, t, x);

%% Inciso 6
##x1 = (t.^+4.*t+1.75).*(t <= 1.5 & t >= -3.5);
##x2 = (t.^2+2.*t-3.25).*(t <= -0.5 & t >= -2.5);
##x3 = ((-1).*t.^2+2.25).*(t <= 0.5 & t >= -1.5);
##x4 = (t.^2-2.*t-2).*(t <= -1.5 & t >= -0.5);;
##x = x1 + x2 + x3 + x4;
##plotCompleto([t(1) t(end) -2 2], 'f', 'x(t)', 'Señal x(f)', 13,'r*-', 0.1, t, x);


##x1 = 0.75 - t.^2;
##x2 = (t.^2)./2 - (1.5).*t + 9/8;
##x = x1.*cajon(t) + x2.*cajon(abs(t) -1 );
##plotCompleto([t(1) t(end) -2 2], 'f', 'x(t)', 'Señal x(f)', 13,'r*-', 0.01, t, x);


%% Inciso IX
##x = sin(pi.*t).*cajon(t./2);
##plotCompleto([t(1) t(end) -2 2], 'f', 'x(t)', 'Señal x(f)', 13,'r*-', 0.01, t, x);

%% Inciso XII
##x = ((tri(t-1) + tri(t+1))+1).*cajon(t./4);
##plotCompleto([t(1) t(end) -2 2], 'f', 'x(t)', 'Señal x(f)', 13,'r*-', 0.01, t, x);

##x = (t.^2).*cajon(t-0.5) + escalon(t-1); ##no hacer caso al punto que aparece en (1,1)
##plotCompleto([t(1) t(end) -2 2], 'f', 'x(t)', 'Señal x(f)', 13,'r*-', 0.01, t, x);