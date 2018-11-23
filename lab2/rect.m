function[g] = rect(x)
t = linspace(-2,2,1000);
g = ((t>=x).*(t<1+x));
end