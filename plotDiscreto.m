function plotDiscreto(eje_x,eje_y,titulo,tam_letra,col,n,x)
  
  % plotCompleto(lim_ejes, eje_x, eje_y, titulo, tam_letra, col, grosor, t, x)
  % 
  % Realiza un gráfico de una SVIC de manera adecuada
  % 
  %
  %
 
  stem(n, x, col); %Grafico.
  set(gca,'FontSize', tam_letra); % Tamaño de letra para la leyenda y ejes.
  xlabel(eje_x, 'Interpreter', 'Latex'); % Nombro el eje x.
  ylabel(eje_y, 'Interpreter', 'Latex'); % Nombro el eje y.
  title(titulo);

  end