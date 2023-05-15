function [x, y, z] = f3(a,b,d)
    x = [a:d:b];
    y = tan(x);
    z = sin(x.+pi./2);
endfunction
