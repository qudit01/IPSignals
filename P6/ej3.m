##k = 10;
n = linspace(0,k);
##x = tri(0, 3);
##intv1 = [-6 6];
##pfx = repmat(x(n), 1, diff(intv1)/3);
##px = linspace(intv1(1), intv1(2), length(pfx));
##xn = tri(n - k);
##
##figure 1
##plot(px, pfx)
##grid

x = sawtooth(n);
plot(n, x);