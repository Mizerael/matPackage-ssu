function y1 = quadro_interpolant (x0, y0, x1)
  n = size(x0, 2);
  y1 = [];
  i = 2;
  for x = x1
    if i != n && x0(i - 1) <= x
      i += 1;
    endif
    mat = [x0(i - 2).^ 2 x0(i - 2) 1; x0(i - 1).^2 x0(i - 1) 1; x0(i).^ 2 x0(i) 1];
    res = [y0(i - 2); y0(i - 1); y0(i)];
    coeff = mat \ res;
    y1 =[y1 coeff(1).*x.^2 + coeff(2).*x + coeff(3)];
  endfor  
