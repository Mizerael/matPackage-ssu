function y = simps(f, a, b)
  h =  (b.-a)./ 30;
  first_sum = 0;
  second_sum = 0;
  for k = 1:14
    first_sum += f(a.+ (2.*k.-1).*h);
    second_sum += f(a.+2.*k.*h);
  endfor
  first_sum += f(a.+ (2.* 15 - 1).* h);
  y = h.*(f(a).+ f(b).+ 4.* first_sum.+ 2.* second_sum)./3;
