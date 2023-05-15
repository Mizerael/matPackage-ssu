x = [-6:2:6];
y = @(x)(-0.1 * x.^3 - 0.5 * x + 5);

x_interpolant = [-6:0.1:6];

y0 = y(x);

y1_line = line_interpolant(x, y0, x_interpolant);

y1_quadro = quadro_interpolant(x, y0, x_interpolant);

y1_interp1 = interp1(x, y0, x_interpolant);
y1_cubic = interp1(x, y0, x_interpolant, 'cubic');
y1_spline = spline(x, y0, x_interpolant);

figure(1)
  hold on
    plot(x_interpolant, y1_line,"-g", x_interpolant, y1_quadro,"-r", x, y0, "o-.")
    fplot(y, [-6, 6], "-..b")
  hold off
  legend("line_interpolant", "quadro interpolant", "point interpolation", "true function")
  grid on
  xlabel("x")
  ylabel("y")
 
figure(2)
  hold on
    plot(x_interpolant, y1_interp1, "-m", x_interpolant, y1_cubic, "-..b", x_interpolant, y1_spline, "-..g", x, y0, 'or')
    fplot(y, [-6, 6], '-r')
  hold off
  legend("line interpolant", "cubic interpolant", "spline interpolant", "point interpolation", "true function")
grid on
