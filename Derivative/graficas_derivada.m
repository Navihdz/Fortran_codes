clear all
A=load('evalfun.dat');
B=load('derivada.dat');
C=load('derivada.dat');
%valores de x
x=A(:,1);
%funcion seno evaluada
yp=B(:,1);
%derivada sen 
y=A(:,2);
%coseno evaluado
coseval=C(:,1);

clf
%grafica seno
subplot(3,1,1)
plot(x,y,'.-','LineWidth',1)
grid on
title('Función sin(x)','FontSize',12)


%grafica aprox derivada
subplot(3,1,2)
plot(x,yp,'ob','LineWidth',1)
hold on
grid on
title('Aproximación a la primera derivada de la función seno','FontSize',12)

%gtafica coseno para comparación
subplot(3,1,3)
plot(x,coseval,'--k','LineWidth',1)
title('Función coseno','FontSize',12)

print('grafica','-dpng')