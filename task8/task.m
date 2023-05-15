pkg load symbolic
x_i = 0:0.1:3;
f = @(x)sin(x./2).^2;
y_i = f(x_i);
 
syms x;
f_dx = diff(f, x)

f_d = @(x)sin(x./2).*cos(x./2);
dy =f_d(x_i);

n = size(y_i, 2);
dy_l = [(y_i(2:n) - y_i(1: n.- 1))./ 0.1, dy(n)];
dy_r = [dy(1) (y_i(2:n) - y_i(1:n.- 1))./0.1];
dy_c = [dy(1) (y_i(3:n) - y_i(1:n.- 2))./0.2 dy(n)];

figure(1)
  plot(x_i, dy, '-r',
       x_i, dy_l, ':b',
       x_i, dy_r, ':g',
       x_i, dy_c, ':y')
  grid on
  legend("искомое", 
         "левые разности",
         "правые разности",
         "центральные разности")
         
f = @(x)sin(x./2).^2;
x_i2 = 0:0.2:3.0;
y_i2 = f(x_i2);
n2 = size(x_i2, 2);
dy_c2 = [(y_i2(3:n2) - y_i2(1:n2.- 2))./ 0.4];

figure(2)
  plot(x_i2(2:n2.-1), dy_c2, ':r')
  grid on
  legend("центральные разности")

dy_cR = runge_romberg(dy_c, dy_c2);

x_i(3:2:size(dy,2).-1);
abs_err_vector_cc = abs(dy(3:2:size(dy,2).-1) - dy_c(3:2:size(dy_c, 2).-1));
abs_err_vector_cR = abs(dy(3:2:(size(dy,2).- 1)) - dy_cR);

figure(3)
  plot(x_i(3:2:size(dy,2).-1), abs_err_vector_cc, ".-r", 
       x_i(3:2:size(dy,2).-1), abs_err_vector_cR, ".-b")
  grid on
  legend("|dy - dy_c|",
         "|dy - dy_{cR}|")
  

