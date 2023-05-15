#import 'bisec.m'
#import 'hord.m'
#import 'mpi.m'

f5 = @(x)(atan(2.* x) - 1./ (1.+ x))
f30 = @(x)(acos(2.* x) - x.*x - 0.35)
x5 = [-5:0.1:5];
figure(1)
y5 = f5(x5);
plot(x5,y5);
grid on
title("arctg(2*x)-1/(1+x)")
xlabel('x')
ylabel("f(x)")

figure(2)
x30 = [-0.5: 0.1:0.5];
y30 = f30(x30);
plot(x30, y30);
grid on
title("arccos(2*x) - x^2 - 0.35")
xlabel('x')
ylabel("f(x)")

[x5b, f5b, fl] = bisec(f5,-5, 5, 1e-3);
printf("bisec for function 5:\n\tx: %f f(x) = %f\n", x5b, f5b)
[x5h, f5h, fl] = hord(f5, -5, 5, 1e-3);
printf("hord for function 5:\n\tx: %f f(x) = %f\n", x5h, f5h)
[x30b, f30b] = bisec(f30, -0.5, 0.5, 1e-3);
printf("bisec for function 30:\n\tx: %f f(x) = %f\n", x30b, f30b)
[x30h, f30h] = hord(f30, -0.5, 0.5, 1e-3);
printf("hord for function 30:\n\tx: %f f(x) = %f\n", x30h, f30h)

[xzero, ffzer] = fzero(f5, [-5 5]);
[xsolve, ffsol] = fsolve(f5, 0)
printf("fzero & fsolve solution for function 5:\n\tfzero:\n\t\tx: %f f(x) = %f\n",xzero, ffzer)
printf("\tfsolve:\n\t\tx: %f\n", xsolve)
[xzero2, ffzer2] = fzero(f30, [-0.5, 0.5]);
[xsolve2, ffsol2] = fsolve(f30, 0)
printf("fzero & fsolve solution for function 30:\n\tfzero:\n\t\tx: %f f(x) = %f\n", xzero2, ffzer2)
printf("\tfsolve:\n\t\tx: %f\n", xsolve2)

[mpix, mpif] = mpi(f5, 1, 1e-5);
printf("mpi solution for function 5:\n\tx: %f f(x) = %f\n", mpix, mpif)
