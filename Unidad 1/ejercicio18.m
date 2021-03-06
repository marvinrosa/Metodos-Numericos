% Seccion de inicializacion
clear all
clc
format long
syms t
disp('Ejercicio 18 Guia 1 MEN')

% Sección de introduccion de datos de trabajo
% Para la funcion de trabajo, esta debe estar en el formato f(x)=0
% valor del solve: 29.022413417079096776242796117857
% Sección de valores iniciales
gr=9.81; q=2700; u1=8820; u=u1*1000/3600;
mo = 185000; v = 1065;

% g = u*log(mo/(mo - q*t)) - gr*t - v;
g = u*log(mo/(mo - q*t)) - gr*t - v;
po = 29.01;
p1 = 29.02;
error = 1e-12;

% Sección de evaluaciones del metodo (1/2)
a1 = subs(g,p1);
a2 = subs(g,po);
pk = p1 - a1*(p1-po)/(a1 - a2);
cont = 1;
tol = abs(pk - p1);

% Mostrar los valores solicitados en pantalla
fprintf('n \t\t p0 \t\t p1 \t\t p2 \t\t error \n')
fprintf('%3.0f \t %2.15f \t %2.15f \t %2.15f \t %e\n',cont,po,p1,pk,tol)

% Seccion de corrida del metodo (2/2)
% Verificacion: Mientras no cumpla el criterio de paro, la funcion debe seguir mostrando resultados
while(abs(pk - p1) > error)
	cont = cont + 1;
	po = p1;
	p1 = pk;

	pk = p1 - a1*(p1-po)/(a1 - a2);
	tol = abs(pk - p1);
	fprintf('%3.0f \t %2.15f \t %2.15f \t %2.15f \t %e\n',cont,po,p1,pk,tol);
end

% Mostrar respuesta aproximada en pantalla
fprintf('\n')
fprintf('El valor aproximado de x es: %2.15f\n', pk)