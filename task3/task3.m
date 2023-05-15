
inp = fopen ('Pushkin.txt', 'rt');
out_a = fopen ('Pushkin_a.txt', 'wt');
out_b = fopen ('Pushkin_b.txt', 'wt');

_diff = double('�') - double('�');


string_and_char = 0;
min_str = 10e9;
max_str = 0;
count_words = 0;

while (not(feof(inp)))
    a = strrep(fgetl(inp), '����', '����');
    if size(a)(2) > max_str
        max_str = size(a)(2);
        max_str_value = a;
    elseif size(a)(2) > 0 && size(a)(2) < min_str
        min_str = size(a)(2);
        min_str_value = a;
    endif
    string_and_char += size(a);
    if size(strfind(a, ' '))(2) != 0
        count_words += size(strfind(a, ' '))(2) + 1 - size(strfind(a, '- '))(2);
    endif
    fprintf(out_a, '%s\n', strrep(a, '--', '-'));
endwhile

is_open = true;
inp_a = fopen("Pushkin_a.txt", "r");

while (not(feof(inp_a)))
    a = fgets(inp_a);
    % ������� � ������� ������� ������ ����� �����������, ������ � ������ ����
    tmp = a(1);
    if double(tmp) >= double('�') && double(tmp) <= double('�')
        a(1) = char(double(tmp) - _diff - 1);
    endif

    i = strfind (a, '- ');
    if i != 0
        for j = 1:1:size(i)(2)
            b = a(i(j) + 2);
            if double(b) >= double('�') && double(b) <= double('�')
                a(i(j) + 2) = char(double(b) - _diff - 1);
            endif
        endfor
    endif
    i = strfind (a, '. ');
    if i != 0
        for j = 1:1:size(i)(2)
            b = a(i(j) + 2);
            if double(b) >= double('�') && double(b) <= double('�')
                a(i(j) + 2) = char(double(b) - _diff - 1);
            endif
        endfor
    endif
    % ������� � ������ ������� ���� ����� ����������� �������
    i = strfind(a, '"');
    if i != 0
        for j = 1:1:size(i)(2)
             if is_open 
                b = a(i(j) + 1);
                if double(b) >= double('�') && double(b) <= double('�')
                    a(i(j) + 1) = char(double(b) - _diff - 1);
                endif
                is_open = false;
             else
                is_open = true;
            endif
        endfor
    endif       
    fprintf(out_b, a);
endwhile

fprintf(" ���������� �����: %d \n ���������� ��������: %d \n ",
        string_and_char(1), string_and_char(2));
fprintf("���������� ����: %d \n ", count_words);
fprintf("������� ���������� �������� � ������: %d \n ",
        string_and_char(2) / string_and_char(1));
fprintf("������������ ������: \n %s \n " , max_str_value);
fprintf("����������� ������: %s \n " , min_str_value);