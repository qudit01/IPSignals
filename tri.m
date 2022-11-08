function h = tri(t)
  h = (t+1).*(t >= -1 & t < 0) + (-t+1).*(t >= 0 & t < 1) + (0);
end