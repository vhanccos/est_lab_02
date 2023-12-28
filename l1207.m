hold on
clc; clear all;

% Ensayar el uso de los comandos: rand, unidrnd, unifrnd, tabulate

a = 1; b = 10;
X = (b-a)*rand + a;

%vector1 = [v, e, a];
vector2 = ['v', 'e', 'a'];
permutaciones = perms(vector2);

% Dado un vector de datos conseguir la lista de combinaciones y permutaciones



% Conseguir el número de combinaciones y permutaciones en diferentes ejercicios



% Entrar una palabra y listar sus permutaciones



% Hacer simulación del lanzamiento de una moneda (por 10 o 30 veces o
% más) y conseguir su distribución mostrando su gráfica donde se observa
% que la probabilidad de salir cara y sello sea ½ como sabemos

a = 1; b = 6;
numLanz = 15; % Número de lanzamientos
resLanz = []; % Vector vacio

% Concatenamos un valor aleatorio [1, 6] (lanzamiento de dado) según el
% número de lanzamientos
for i = 1:numLanz
    x = round((b-a)*rand + a);
    resLanz = [resLanz x];
end

disp("Los resultados obtenidos en el lanzamiento de " + numLanz + " dados es:");
disp(resLanz);

% Hacer simulación con el lanzamiento de un dado, variando el número de
% lanzamientos y también mostrando su gráfica respectiva (se sabe que
% P(a) =1/6, para todo a ε Ω). Observando que esta gráfica también
% cambia de acuerdo al número de lanzamientos