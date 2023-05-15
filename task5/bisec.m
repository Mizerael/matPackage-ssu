function [c, fc, fl] = bisec (f, a, b, eps)
if f(a).*f(b) > 0
  fl = false;
  error('values a & b must have a different signs') 
endif
while (b - a > eps)
  c = (a.+b)./2;
  fa = f(a);
  fc = f(c);
  if abs(fc) < eps
    fl = true;
    return;
  endif
  if fc.*fa < 0
    b = c;
  else
    a = c;
  endif
endwhile
