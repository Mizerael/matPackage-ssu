printf ("1.Создать матрицу А размером 5х5, заполненную единицами.\n")
A = ones (5)
printf ("2.Создать вектор а из 5 элементов, заполненный числами от 6 до 10 соответственно.\n")
a = 6:1:10
printf ("3.Изменить матрицу А, заполнив ее главную диагональ элементами вектора а.\n")
A([1:6:25]) = a
printf ("4.Создать матрицу В размером 5х5, заполненную числами 2.\n")
B = ones(5) * 2
printf ("5.Создать вектор b из  пяти чисел от 1 до 5.\n")
b = 1:1:5
printf ("6.Изменить матрицу B, заполнив третью строку элементами вектора b.\n")
B(3,:) = b
printf ("7.Изменить матрицу А, заполнив первую и вторую строки числами 3.\n")
A([1:5:25, 2:5:25]) = 3
printf ("8.Изменить матрицу А, умножив все элементы матрицы А на 3.\n")
A *= 3
printf ("9.Изменить матрицу А, транспонировав ее.\n")
A = A.'
printf ("10.Изменить матрицу А, возведя каждый ее элемент в квадрат.\n")
A = A.^2
printf ("11.Создать матрицу С, равную произведению матриц А и В.\n")
C = A * B
printf ("12.Создать матрицу E, равную поэлементному произведению матриц А и В.\n")
E = A.* B
printf ("13.В матрицу B записать квадрат матрицы B.\n")
B = B ^ 2
printf ("14.Найти D = A + B.\n")
D = A + B
printf ("15.Для матриц С и D найти значения минимального, максимального элементов, произведения, суммы и среднего арифметического  элементов, используя готовые функции.\n")
printf ("min C: %d\n",min(min(C)))
printf ("min D: %d\n",min(min(D)))
printf ("max C: %d\n",max(max(C)))
printf ("max D: %d\n",max(max(D)))
printf ("sum C: %d\n",sum(sum(C)))
printf ("sum D: %d\n",sum(sum(D)))
printf ("prod C: %d\n",prod(prod(C)))
printf ("prod D: %d\n",prod(prod(D)))
printf ("mean C: %d\n",mean(mean(C)))
printf ("mean D: %d\n",mean(mean(D)))
printf ("II-15.\n")
Inp = [5, -3, -7, 3; 
       0, -1, -3, 4;
       1, 0, -2, -3;
       1.3333, -1, -1.6667, 0] 
res = [1; -5; -4; 13]
x = Inp \ res 
disp (Inp * x)
