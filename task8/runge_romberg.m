function y = runge_romberg(y_h, y_2h)
    y =  y_h(3:2:size(y_h, 2).-2) + (y_h(3:2:size(y_h, 2).-1) - y_2h) / (2.^2 .- 1)
