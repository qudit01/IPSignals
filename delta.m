function h = delta(n,m)
  h = [zeros(1,n) m zeros(1,n - (length(m) - 1))];
 end