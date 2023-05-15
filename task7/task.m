x = 1.0:1.0:4.0;
a = 1.0;
b = 4.0;
f = @(x)log(x).^2./x;
f1 = log(x).^2./x;
y = simps(f, a, b)
y_t = trapz(x, f1)
y_q = quad(f, a , b)