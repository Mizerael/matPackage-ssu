
figure(1)
[x,y] = f1(-3, 3, 0.1);
plot(x, y)
grid on
title('func1')
xlabel('x-value')
ylabel('y-value')

figure(2)
[x,y] = f2(-3, 3, 0.1);
plot(x, y)
grid on
title('func2')
xlabel('x-value')
ylabel('y-value')

figure(3)
start = input('start:')
end_ = input('end:')
delta = input('delta:')
[x, y, z] = f3(start,end_, delta);
for i = 1:(length(y)-1)
if abs(y(i) - y(i+1)) >30
y(i) = NaN;
endif
endfor
[hax, h1, h2] = plotyy(x,y,x,z);
set(h1,'Color','green');
set(h2,'Color','red');
legend("tan(x)", "sin(x+pi/2)")
grid on
title('func3')
xlabel('x-value')
ylabel('y-value')

figure(4)
[phi,y] = f4(-2.*pi, 2.*pi, 0.1);
polar(phi, y)
grid on
legend('2*cos(phi)^{1/2}')
grid on
title('func4')
xlabel('x-value')
ylabel('y-value')

figure(5)

u=[-2*pi:0.05*pi:2*pi]'; 
v=[-2*pi:0.05*pi:2*pi];
X=u.^2*cos(v);
Y=u*sin(v);
Z=u * ones(size(v));
size(X)
size(Y)
size(Z)
hs = mesh(X,Y,Z)
