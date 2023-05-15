try

    inp = fopen('source/inp.txt', 'rt')
    out = fopen('source/out.txt', 'at')
    
    a = str2num(fgetl(inp))
    if (size(a)(1) == 0) error ('str')
    endif
    SIZE = size(a)(2) - 1
    n = 1
    while not(feof(inp) || (n > SIZE))
        A(n,:) = a(1:1:SIZE)
        res(n,:) = a(SIZE + 1)
        a = str2num(fgetl(inp))
        if (size(a)(2) > (SIZE + 1)) error('size missmatch')
        endif
        n+= 1;
    endwhile

    if not(feof(inp)) error('size mismatch')
    endif
    % n = 1
    % while not(feof(inp) || (n > 4))
    %     res(n,:) = str2num(fgetl(inp))
    %     n+= 1;
    % endwhile

    x = A \ res 

    r2 = disp(A * x)

    fprintf(out, '\nresult:\n')
    fprintf(out, '\n%f', x)
catch err
    fprintf(out, '\nerror: %s\n%s', err.identifier, err.message)
    error(err.identifier, err.message);
end_try_catch