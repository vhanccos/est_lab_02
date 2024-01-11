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



