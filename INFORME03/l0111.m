
disp("__________________________________________________________________________________________");
disp("Ejercicio 1:");

% Un científico interesado en vigilar contaminantes químicos en alimentos y, por lo tanto,
% la acumulación de contaminantes en la dieta humana, selecciono una muestra aleatoria de n=50
% adultos hombres. Se encontró que el promedio de ingesta diaria de productos lácteos fue de 𝑥̅ =756
% gramos por día, con una desviación estándar de 35 gramos por día. Use esta información muestral
% para construir un intervalo de confianza del 95% para la ingesta diaria media de productos lácteos
% para hombres.

n = 50;
media = 756;
desvEstandar = 35;
intervConf = 95;

a = (100 - intervConf) / 100;

z = norminv(1 - a / 2);

intervalo_inferior = media - z * (desvEstandar / sqrt(n));
intervalo_superior = media + z * (desvEstandar / sqrt(n));

%dist("Intervalo de confianza del 95% para la ingesta diaria media de productos lácteos:");
%dist(intervalo_inferior + " " + intervalo_superior);

fprintf(['Intervalo de confianza del 95%% para la ingesta diaria media de productos lácteos: ' ...
    '[%.2f, %.2f]\n'], intervalo_inferior, intervalo_superior);



disp("__________________________________________________________________________________________");
disp("Ejercicio 2:");

% Un investigador está estudiando el rendimiento de dos tipos de fertilizantes en el crecimiento de plantas.
% Para ello, selecciona al azar dos muestras de plantas: una muestra de n=30 plantas tratadas con el fertilizante
% A y otra muestra de n=20 plantas tratadas con el fertilizante B. Se registra el crecimiento en altura de las plantas
% después de un período de tiempo.

n = 20;
grados_libertad = n - 1;

altura_A = trnd(grados_libertad, n, 1) + 0.8;
altura_B = trnd(grados_libertad, n, 1) + 0.6;

media_A = mean(altura_A);
media_B = mean(altura_B);

desvEstandar_A = std(altura_A);
desvEstandar_B = std(altura_B);

intervConf = 95;

a = (100 - intervConf) / 100;

t_A = tinv(1 - a / 2, n - 1);
t_B = tinv(1 - a / 2, n - 1);

intervalo_inferior_A = media_A - t_A * (desvEstandar_A / sqrt(n));
intervalo_superior_A = media_A + t_A * (desvEstandar_A / sqrt(n));

intervalo_inferior_B = media_B - t_B * (desvEstandar_B / sqrt(n));
intervalo_superior_B = media_B + t_B * (desvEstandar_B / sqrt(n));

fprintf(['Intervalo de confianza del 95%% para la altura media del fertilizante A: ' ...
    '[%.2f, %.2f]\n'], intervalo_inferior_A, intervalo_superior_A);

fprintf(['Intervalo de confianza del 95%% para la altura media del fertilizante B: ' ...
    '[%.2f, %.2f]\n'], intervalo_inferior_B, intervalo_superior_B);
disp("__________________________________________________________________________________________");
