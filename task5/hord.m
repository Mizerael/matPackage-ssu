function [c, fc, fl] = hord (f, a, b , eps)
  if f(a).*f(b) > 0
    fl = false;
    error('values f(a) & f(b) must have a different signs')
  endif
  while (b - a) > eps
    fa = f(a);
    fb = f(b);
    c = a.- (b.-a)./(fb.-fa).*fa;
    fc = f(c);
    if fc.*sign(fc) < eps
      fl = true;
      return;
    endif
    if fa.*fc < 0
      b = c;
    else
      a = c;
    endif
endwhile
