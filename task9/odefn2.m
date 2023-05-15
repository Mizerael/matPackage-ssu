function F = odefn2(x,y)
F=[y(2); cos(2*x)- y(2) - 4 * y(1)];
end