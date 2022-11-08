addpath('../../funciones');
T=10;


%% Inciso a h(t+1)
##t=[-T:.01:T];
##h = tri1(t+1);
##plot(t,h);
##title("Gráfico del inciso 1 h(t+1)");
##xlabel("t");
##ylabel("h(t+1)");
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal h(t+1)', 13,'r*-', 0.1, t, h);


%% Inciso b h(2t-3)
##t=[-T:.01:T];
##h = tri1(2*t-3);
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal h(2t-3)', 13,'r*-', 0.1, t, h);


%% Inciso c 2.*h((-1/2).*(t+10))
##t=[-T:.01:T];
##h = 2*tri1((-1/2).*(t+10));
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal 2.*h((-1/2).*(t+10))', 13,'r*-', 0.1, t, h);

%% Inciso d h(t/2).*(escalon(t + 2) - escalon(t - 2));
##t=[-T:.01:T];
##h = tri1(t/2).*(escalon(t + 2) - escalon(t - 2));
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal h(t/2).*(escalon(t + 2) - escalon(t - 2));', 13,'r*-', 0.1, t, h);


%% Inciso e h(t^2)
##t=[-T:.01:T];
##h = tri1(t.^2);
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal tri1(t.^2);', 13,'r*-', 0.1, t, h);

%% Inciso f Impar{h(t}
##t=[-T:.01:T];
##hn = (tri1(t) - tri1(-t))./2;
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal Impar{h(t)}', 13,'r*-', 0.1, t, hn);


%% Inciso e Par{h(t)}
##t=[-T:.01:T];
##hp = (tri1(t) + tri1(-t))/2;
##plotCompleto([t(1) t(end) -2 2], 't', 'h(t+1)', 'Señal Par{h(t)}', 13,'r*-', 0.1, t, hp);