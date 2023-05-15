function y1 = line_interpolant (x0, y0, x1)
  n = size(x0, 2);
  y1 = [];
  a = (y0(2:n).- y0(1:n - 1))./ (x0(2:n).- x0(1:n - 1));
  b = y0(1:n - 1).- a.* x0(1:n - 1);
  i = 1;
  for x = x1
    if x0(i + 1) < x
      i+= 1;
    endif
    y1 = [y1 (a(i) * x + b(i))];
  endfor
