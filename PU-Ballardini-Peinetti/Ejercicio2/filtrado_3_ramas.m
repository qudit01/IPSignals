function [ y ] = filtrado_3_ramas( x )
  y = zeros(size(x));
  y(1) = x(1);
  for i=2:length(x)
    if(i < 8821)
      y(i) = x(i);
    elseif(i < 17641)
      y(i) = x(i) + (0.45)*x(i-8820);
    elseif(i < 26460)
      y(i) = x(i) - (0.2)*x(i-17640);
    end
  end
end