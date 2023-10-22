%INTERPOLACIÓN "POLINOMIO DE LAGRANGE"
clc %permite borrar el área de trabajo
clear %Permite borrar las variables almacenadas
syms x
fprintf ('INTERPOLACIÓN "POLINOMIO DE LAGRANGE" \n \n \n ');
%fprintf me permite ingresar comentarios de manera textual que puedan
%orientar al usuario en el uso del programa.
n=input('Grado del polinomio:  ');
n=n+1;
xx=zeros(1,n); %zeros crea una matriz que hace que los valores que se
               %ingresen sean nuevos
fx=zeros(1,n);
for i=1:n
    fprintf('Ingrese el valor de x%i',i);
    xx(i)=input(':');
    fprintf('Ingrese el valor de fx%i',i);
    fx(i)=input(':');
end
%input es un comando de solicitud de entrada de datos del usuario.
xd=input('valor a evaluar: ');
dp=0 %Esta variable se utilizará para almacenar el valor aproximado de la derivada
i=0; %Esta variable se utilizará como contador en un bucle
for i=1:n %Se inicia un bucle `for` que registra una serie de puntos de datos
     % El número total de puntos de datos se denota como `n`
  p=1; % El número total de puntos de datos se denota como `n`
  for j=1:n %se utiliza para recorrer nuevamente todos los puntos de datos,
       % esta vez representada por `j`
    if i~=j % Se verifica si es diferente de j. Esto evita la división
      p=p*(xx(i)-xx(j)); %se calcula un término del denominador del polinomio
    end
  end
  s=0;
  for k=1:n
    if k~=i
      pl=1;
      for j=1:n
        if j~=i && j~=k
          pl=pl*(xd-xx(j))
        end
       end
      s=s+pl;
    end
  end
  dp=dp+(fx(i)/p)*s;
end
disp('La derivada es: ');
disp (dp) % Muestra el valor de la derivada aproximada, dp
plot (xx,fx,'ro--') %Realiza un gráfico de los xx(fx(los valores de la función)
  %agregamos etiquetas
xlabel('x')
ylabel('fx')
title('x vs fx')
 %Fin


