function [x, y] = f2(a,b,d)
    x = [a:d:b];
    y = (x.^2.+3).^1./3.*cos(pi.*x./2);
endfunction
