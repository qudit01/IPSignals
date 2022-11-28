function [ y ] = filtrado_2_ramas( x )
  y = zeros(size(x));
  y(1) = x(1);
  for i=1:length(x)
    if(i < 8821)
      y(i) = x(i);
    elseif(i < 17641)
      y(i) = x(i) + (0.45)*x(i-8820);
    end
  end
end