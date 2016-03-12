% Seccion de inicializacion
clear all
clc
syms x
format long

disp('Guia 2 MEN Ejercicio 2c')
X = [0,3,5,8,13] %Tiempo
Y = [0,225,383,623,993] %Distancia
Yd = [75,77,80,74,72] %Velocidad
aprox = 13.25

% Valor aproximado por interpolacion cubica modo extrapolacion (distancia)
fprintf('\n');
ValC1 = interp1(X,Y,aprox,'cubic','extrap');
fprintf('El valor de la distancia es: %2.15f \n', ValC1)

% Valor aproximado por interpolacion lineal modo extrapolacion (distancia)
fprintf('\n');
ValL1 = interp1(X,Y,aprox,'linear','extrap');
fprintf('El valor de la distancia es: %2.15f \n', ValL1)

% Valor aproximado por interpolacion cubica modo extrapolacion (velocidad)
fprintf('\n');
ValC2 = interp1(X,Yd,aprox,'cubic','extrap');
fprintf('El valor de la velocidad es: %2.15f \n', ValC2)

% Valor aproximado por interpolacion lineal modo extrolacion (velocidad
fprintf('\n');
ValL2 = interp1(X,Yd,aprox,'linear','extrap');
fprintf('El valor de la velocidad es: %2.15f \n', ValL2)