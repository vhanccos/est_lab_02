clc; clear;
disp("____________________________________________________________");
disp("Ejercicio 1:");

% Suponga que la demanda mensual de un bien de consumo se distribuye
% normalmente con media 650 Kg y una deviación estandar de 100 Kg. ¿Qué
% probabilidad hay de que la demanda no supere los 500 Kg?
X = 650;
o = 100;

% f = P (X < 500)
% f = P ((x-media)/desviacion < (500-650)/100)
z_1 = (500 - X) / o;
% F = P (Z < z_1)
P = normcdf(z_1);

disp("La probabilidad de que la demanda no supere los 500 Kg es de " + P)

% inversion
%norminv(0.898)

disp("____________________________________________________________");
disp("Ejercicio 2:");

%Se lanza un dado 7 veces y contamos el numero de 5 que 
%obtenemos ¿cual es la probabilidad de obtener 3 cincos? 

X = 3;
n = 7;
p = 1/6;

Y = binopdf(X,n,p);

disp("La probabilidadd de obtener tres cincos es " + Y);

disp("____________________________________________________________");
disp("Ejercicio 3:");

%Si la probabilidad de que una persona cualquiera que
% asista a un desfile en un día muy caluroso de verano
% sufra insolación es 0.005. ¿Cuál es la probabilidad de
% que 18 de las 3 000 personas que asistan al desfile
% sufran insolación?

x = 18;
n = 3000;
p = 0.005;
l = n * p;
P = poisspdf(18,l);

disp("La probabilidadd de que 18 de las 300 personas" + ...
    " sufran de insolación es " + P);

disp("____________________________________________________________");



