function plotCompleto(lim_ejes,eje_x,eje_y,titulo,tam_letra,col,grosor,t,x)
  
  % plotCompleto(lim_ejes, eje_x, eje_y, titulo, tam_letra, col, grosor, t, x)
  % 
  % Realiza un gr�fico de una SVIC de manera adecuada
  % 
  %
  %
    
  figure('units', 'normalized', 'outerposition', [0 0 1 1]); %Crea y maximiza la figura
  plot(t, x, col, 'Linewidth', grosor); %Grafico. Color (y marcador) y grosor
  axis(lim_ejes); grid on; % L�mites de los ejes. Grilla.
  set(gca,'FontSize', tam_letra); % Tama�o de letra para la leyenda y ejes.
  xlabel(eje_x, 'Interpreter', 'Latex'); % Nombro el eje x.
  ylabel(eje_y, 'Interpreter', 'Latex'); % Nombro el eje y.
  title(titulo);
end
