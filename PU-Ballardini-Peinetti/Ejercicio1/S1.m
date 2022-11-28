%% Sistema 1 y[n]= 1/2*x[n] + 1/2*x[n-1]
function [y]= S1(x);
  y=zeros(size(x));
  for i=2:length(x)
    y(i)=(1/2)*x(i)+(1/2)*x(i-1);
  end
end