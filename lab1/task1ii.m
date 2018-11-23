g1 = @(t)exp(-t).*(t>=0);
%g2 = @(t)exp(-2*t).*(t>=0);
mu = -1;
g2 = @(t)mu.*g1(t);
g = @(t) g1(t).*g2(t);
absg1 = @(t)abs(g1(t)).^2;
absg2 = @(t)abs(g2(t)).^2;
f1 = integral(g,0,inf).^2;
f2 = integral(absg1,0,inf).*integral(absg2,0,inf);
f1==f2