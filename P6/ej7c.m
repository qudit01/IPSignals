%% Reconstructor de orden cero
Ts = 1/5000; f0 = 500; n = [0:1:20];
x = sin(2*pi*f0*n*Ts);
t = [0:Ts/200:Ts*20]; yZOH = zeros(size(t));
figure, hold on, plot(n*Ts,x,'o');
for k = 1:length(n)
xrp = x(k).*((t>= n(k)*Ts) & (t < (n(k)+1)*Ts));
plot(t,xrp,'k--');
yZOH = yZOH+xrp;
end
plot(t,yZOH,'r'), hold off;
legend('Muestras','Se~nal Original','ZOH','Orden 1','Reconstructor de orden cero')
%figure, plot(n*Ts,x,'o',n*Ts,x,'r-'), hold off;


%% Reconstructor ideal
yIDEAL = zeros(size(t));
figure, hold on, plot(n*Ts,x,'o')
for k = 1:length(n)
xrp = x(k).*sinc((t-n(k).*Ts)/Ts);
plot(t,xrp,'k--');
yIDEAL = yIDEAL+xrp;
end
plot(t,yIDEAL,'r'), hold off;

%% Graficar las señales reconstruidas
y = sin(2*pi*f0*t);
figure, plot(n*Ts,x,'o',t,y,t,yZOH,n*Ts,x,'-',t,yIDEAL)
legend('Muestras','Señal Original','ZOH','Orden 1','Reconstructor Ideal')