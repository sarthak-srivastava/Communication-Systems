t = linspace(-2,2);
t0 = 4;
w = 2*pi/t0;
g = 1 + square(w.*(t+1));
figure(1);
plot(t,g);
axis([-2,2,-1,4]);

figure(2);
N = [1,3,9,29,49,99];
T0 = 4;
w0 = 2*pi/T0;
gN = zeros(1);
for i = 1:6
    n = N(i);
    k = 0;
    for ti = linspace(-2,2)
        gn = 1;
        for j = 1:n
            gn = gn+ 2*sinc(j/2)*cos(j*w0*ti);
        end
        k = k+1;
        gN(k) = gn;
    end
    subplot(3,2,i);
    plot(t,gN,t,g);
    axis([-2,2,-1,4]);
    title(int2str(n));
end
