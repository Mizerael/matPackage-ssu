
[T,Y]=ode45(@odefn2, [0, 20], [1,-1]);

[x1, y1] = runge_kut_4(@odefn2, [0, 20], [1,-1]);

[x2, y2] = runge_kut_3(@odefn2, [0, 20], [1,-1]);
figure(1)
hold on
plot(T,Y,'-ok','MarkerSize',2);
plot(x1,y1,'-ob','MarkerSize',2);
plot(x2, y2,'-or','MarkerSize',2);
hold off
legend('ode45', 'runge kut 4','runge kut 3')
grid on

[T,Y]=ode23(@odefn1, [0, 5], 1);

[x1, y1] = runge_kut_4(@odefn1, [0, 5], 1);

[x2, y2] = runge_kut_3(@odefn1, [0, 5], 1);

figure(2)
hold on
plot(T,Y,'-ok','MarkerSize',2);
plot(x1,y1,'-ob','MarkerSize',2);
plot(x2, y2,'-or','MarkerSize',2);
hold off
legend('ode45', 'runge kut 4','runge kut 3')
grid on