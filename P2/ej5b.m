addpath('../../funciones');

N=10;
n=[-N:N];
grid on;
hold on;

##x = [-3 1 10 5 3];
##y = medfilt1(x);


%%inciso a x[n] = delta[n] 
##x = delta(N, [1]);
##y = medfilt1(x, 1);
##y2 = median(y);

%%inciso a x[n] = C
##x = 4;
##y = medfilt1(x, 1);
##y2 = median(y);

%%inciso b x[n] = -delta[n] + delta[n-1] - delta[n-2]
##x = -1.*delta(N,[1]) + delta(N,[0 1]) -1.*delta(N,[0 0 1]); 
##y = medfilt1(x,3);
##y2 = median(y);
##stem(n,y,'r');
##stem(n,x,'b');
