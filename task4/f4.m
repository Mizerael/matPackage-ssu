function [phi, y] = f4(a,b,d)
    phi = [a:d:b];
    y = 2.*(cos(phi).^1/2);
endfunction
