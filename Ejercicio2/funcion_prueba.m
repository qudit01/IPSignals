function [ y ] = funcion_prueba( x )
  %% Escribimos una ecuación en diferencias para verificar la resp impulsional
  y = zeros(size(x));
  y(1) = x(1);
  for i=1:length(x)
    if(i < 8821)
      y(i) = x(i);
    elseif(i < 17641)
      y(i) = x(i) - (1/2)*x(i-8820);
    else
      y(i) = x(i) - (1/2)*x(i-8820) + (1/4)*x(i-17640);
    end
  end
end
