function  h = escalon(t)
  h = ((sign(t)+1)/2) + (0.5).*(t==0);
  end