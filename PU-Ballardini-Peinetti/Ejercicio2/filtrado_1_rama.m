function [ y ] = filtrado_1_rama( x )
  y = zeros(size(x));
  y(1) = x(1);
  for i=2:length(x)
    if(i < 8821)
      y(i) = x(i);
    else
      y(i) = x(i) + (0.45)*x(i-8820);
    end
  end
end