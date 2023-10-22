% INTERPOLACIÓN "POLINOMIO DE LAGRANGE"
clc %permite borrar el área de trabajo
clear %Permite borrar las variables almacenadas
syms x
fprintf('INTERPOLACIÓN "POLINOMIO DE LAGRANGE"  \n   \n   \n ');
n=input ('Grado del polinomio:  ');
n=n+1;
xx=zeros(1,n); %zeros crea una matriz.
fx=zeros(1,n);
for i=1:n
    fprintf('Ingrese el valor de x%i',i);
    xx(i)=input(':');
    fprintf('Ingrese el valor de fx%i',i);
    fx(i)=input(':');
end

fprintf('Ingrese el valor a interpolar  '); %solicitando el valor a interpolar
int=input(':');    % se lee el valor
fint=0; %sí fint está en 0. Esta variable se almacenará el resultado de la interpolación
for i=1:n %El índice actual en la lista de puntos.
  l=1;      %Se inicializa la variable len 1.
  for j=1:n
      if i~=j   %Se verifica si ies diferente de j
         l=l*((x-xx(j))/(xx(i)-xx(j))); %`x' es el punto en el que se desea interpolar,
       % y xx(i)y `xx(j)son los valores conocidos de la variable independiente iy j.
     end
  end
  fint=fint+l*fx(i); 
end
% Ahora, evaluamos el polinomio interpolador en el valor de int.
resultado = subs(fint, x, int);

fprintf('El resultado de la interpolación en %i es: %f\n', int, resultado);


plot (xx,fx,'ro--') %Realiza un gráfico de los xx(fx(los valores de la función)
  %agregamos etiquetas
xlabel('x')
ylabel('fx')
title('x vs fx')
 %Fin
