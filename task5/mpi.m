function [x, fx] = mpi (f, x0, eps)
%syms x
%F = diff(t)
%g = @(x)(x - f(x)./F(x));
%x1 = g(x0);
%fx = g(x);
x = x0.- f(x0);
fx = f(x);
while abs(fx) > eps
  x = x - f(x)
  fx = f(x);
endwhile
