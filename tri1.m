%%
function h = tri1(t)
  
  h = (t+1).*(t >= -1 & t < 1) + (-t+3).*(t >= 1 & t < 3) + (0);
end
%%