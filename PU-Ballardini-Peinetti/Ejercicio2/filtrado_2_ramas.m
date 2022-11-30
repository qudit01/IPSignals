function [ y ] = filtrado_2_ramas( x )
  y = zeros(size(x));
  y(1) = x(1);
  for i=2:length(x)
    if(i < 8821)
      y(i) = x(i);
    elseif(i < 26461)
      y(i) = x(i) + (0.45)*x(i-8820);
    else
      y(i) = x(i) + (0.45)*x(i-8820) - (0.09)*x(i-26460);
    end
  end
end