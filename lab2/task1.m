t = linspace(-2,2,1000);
g = rect(0);
acf = zeros(1,101);
i = 1;
for xi = -1:0.02:1
    f = rect(xi);
    acf(i) = sum(f.*g)/250;
    i = i+1;
end

figure(1)
plot(t,g)
axis([-1.5 1.5 0 1.5])
grid on

hold on;
x = -1:0.02:1;
plot(x,acf)
axis([-1.5 1.5 0 1.5])
grid on