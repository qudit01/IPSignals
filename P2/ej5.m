addpath('../../funciones');
N=10;
n=[-N:N];
axis([-2*N 2*N -N/2 N/2]);
grid on;
hold on;
x = 0;
%% S1 y[n] = x[n] + 1/2x[n-1]
##x = [zeros(1,N) 1 zeros(1,N)];
##x1 = [zeros(1,N) 0 1/2 zeros(1,N-1)];
##stem(n, x);
##stem(n, x1);
%%x[n] = 5delta(n);
##y = 5.*x + (5/2).*x1;
##stem(n, y);
  
%%x[n] = 3delta(n-1)
##y = 3.*x + (3/2).*x1;
##stem(n+1, y);

%%x[n] = delta(n) + 2delta(n-1) a = 1/2
##x = [zeros(1,N) 1 zeros(1,N)];
##x1 = [zeros(1,N) 0 1/2 zeros(1,N-1)];
##x2 = [zeros(1,N) 0 0 1 zeros(1,N-2)];
##y = x + 2.5.*x1 + x2;
##stem(n, y);

%% S2 y[n] = x[n]*1/2x[n-1] a = 1/2
%%x[n] = 5delta[n]  
##x = [zeros(1,N) 1 zeros(1,N)];
##x1 = [zeros(1,N) 0 1 zeros(1,N-1)];
##y = 5.*x.*(2.5).*x1;
##stem(n, y);

%%x[n] = 3delta[n-1]  a = 1/2
##x = [zeros(1,N) 1 zeros(1,N)];
##x1 = [zeros(1,N) 0 1 zeros(1,N-1)];
##y = 3.*x.*(1.5).*x1;
##stem(n+1, y);

##%%x[n] = delta[n] + 2delta[n-1] a = 1/2
##x = delta(N,[1]);
##x1 = delta(N,[0 1]);
##y = 3.*x.*(1.5).*x1;
##stem(n, x);

%%x[n] = (delta[n] + 2delta[n-1]).*a.*(delta[n-1] + 2delta[n-2]) a = 1/2
##a = 0.5;
##x  = delta(N,[1]);
##x1 = delta(N,[0 1]);
##x2 = delta(N,[0 0 1]);
##y = (x + 2*x1).*(a*(x1 + 2*x2));
##stem(n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] --> 2*b^n.u[n] b = 1/2
##a = 0.5;
##b = 1/2;
##y = 5.*(b.^n).*escalon(n);
##stem(n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] b = 2
##a = 0.5;
##b = 2;
##y = 5.*(b.^n).*escalon(n);
##stem(n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] --> 2*b^n.u[n] b = 1/2
##a = 0.5;
##b = 1/2;
##y = 3.*(b.^(n-1)).*escalon(n-1);
##plotDiscreto('n', 'y[n]', 'Señal S3 con entrada x[n] = 3delta[n-1] a=0.5, b=1/2', 15, 'r', n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] b = 2
##a = 0.5;
##b = 2;
##y = 3.*(b.^(n-1)).*escalon(n-1);
##plotDiscreto('n', 'y[n]', 'Señal S4 con entrada x[n] = 3delta[n-1] a=0.5, b=2', 15, 'r', n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] --> c*b^n.u[n] b = 1/2
##a = 0.5;
##b = 1/2;
##y = (b.^n).*escalon(n) + 2.*(b.^(n-1)).*escalon(n-1);
##plotDiscreto('n', 'y[n]', 'Señal S4 con entrada x[n] = delta[n] + 2delta[n-1] a=0.5, b=1/2', 15, 'r', n, y);

%%x[n] = delta[n].*a.*delta[n-1] a = 1/2 y[n] = b*y[n-1] + x[n] b = 2
##a = 0.5;
##b = 2;
##y = (b.^n).*escalon(n) + 2.*(b.^(n-1)).*escalon(n-1);
##plotDiscreto('n', 'y[n]', 'Señal S3 con entrada x[n] = delta[n] + 2delta[n-1] a=0.5, b=2', 15, 'r', n, y);

%% y[n] = sumatoria desde k = n-n0 hasta n+n0 de x[k]
##x = cajon(n);
##y = 5.*x;
##plotDiscreto('n', 'y[n]', 'Señal S4 y[n] = sumatoria desde k = n-n0 hasta n+n0 de x[k] con x[n] = 5delta[n]', 15, 'r', n, y);

##x = cajon(n-1);
##y = 3.*x;
##plotDiscreto('n', 'y[n]', 'Señal S4 y[n] = sumatoria desde k = n-n0 hasta n+n0 de x[k] con x[n] = 3.delta[n-1]', 15, 'r', n, y);

##x = cajon(n) + 2.*cajon(n-1);
##y = x;
##plotDiscreto('n', 'y[n]', 'Señal S4 y[n] = sumatoria desde k = n-n0 hasta n+n0 de x[k] con x[n] = delta[n] + 2.delta[n]', 15, 'r', n,y);

%% y[n]= n*x[n] 
## x[n] = 5delta[n]
##x = 5.*delta(N, [1]);
##y = n.*x;
##plotDiscreto('n', 'y[n]', 'Señal S5 y[n] = n.*x[n] con x[n] = 5delta[n]', 15, 'r', n, y);

## x[n] = 3delta[n-1]
##x = 3.*delta(N,[0 1]);
##y = n.*x;
##plotDiscreto('n', 'y[n]', 'Señal S5 y[n] = n.*x[n] con x[n] = 3delta[n-1]', 15, 'r', n, y);

## x[n] = delta[n] + 2delta[n-1]
##x = delta(N,[1]) + 2.*delta(N,[0 1]);
##y = n.*x;
##plotDiscreto('n', 'y[n]', 'Señal S5 y[n] = n.*x[n] con x[n] = delta[n] + 2delta[n-1]', 15, 'r', n, y);