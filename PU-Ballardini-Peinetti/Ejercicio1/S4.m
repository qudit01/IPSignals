%% Sistema 4 y[n]= 1/4*x[n] - 1/4*x[n-1] - 1/2*y[n-1]
function [y]= S4(x);
  y=zeros(size(x));
  y(1) = (1/4)*x(1);
  for i=2:length(x)
    y(i)=(1/4)*x(i)-(1/4)*x(i-1)-(1/2)*y(i-1);
  end
end