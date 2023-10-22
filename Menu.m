%Inicio del programa "INTERPOLACIÓN Y DERIVACIÓN POR LAGRANGE
op1=1;
while op1==1
clc %permite borrar el área de trabajo
clear %Permite borrar las variables almacenadas
op=menu('¡BIENVENIDO!, ¿Qué programa quieres utilizar?','Interpolación por Lagrange', 'Derivación por lagrange');
switch op
  case 1
    Interpolacion_por_polinomios_de_Lagrange
  case 2
    Derivacion_por_polinomios_de_Lagrange
end
op1=menu ('Desea volver a usar el programa?','SI', 'NO');
end
fprintf('Adiós\n')

%Fin