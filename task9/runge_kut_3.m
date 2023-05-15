function [x, y] = runge_kut_3(f, r, y_0)
  x = r(1);
  y = y_0;
  h = 0.25;
  for i = r(1)+h:h:r(2)
    k1 = h * f(x(size(x, 1)), y(size(y, 1),:));
    k2 = h * f(x(size(x, 1)) + h / 2, y(size(y, 1),:) + k1' / 2);
    k3 = h * f(x(size(x, 1)) + h, y(size(y, 1),:) + 2 * k2' - k1');
    y_l = y(size(y, 1),:)';
    y = [y; (y_l + (k1 + 4 * k2 + k3) / 6)'];
    x =[x; x(size(x, 1)) + h];
  endfor
endfunction