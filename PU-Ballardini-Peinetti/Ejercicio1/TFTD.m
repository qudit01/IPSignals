%% Transformada de Fourier de Tiempo Discreto
function [X, s] = TFTD(x, n);
  ds = 0.001;
  s = [-0.5:ds:0.5];
  X = zeros(size(s));
  for k = 1:length(s)
    X(k)=sum(x.*exp((-1)*i*2*pi*s(k)*n));
  end
end