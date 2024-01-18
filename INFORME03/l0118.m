% individual ejercicio prueba de hip
disp("__________________________________________________________________________________________");
disp("Ejercicio 1:");
% Un investigador quiere determinar si hay una diferencia significativa en el
% rendimiento promedio de dos grupos de estudiantes. Se toman muestras de ambos
% grupos y se obtienen los siguientes resultados:

% Grupo 1: [85, 90, 92, 88, 95]
% Grupo 2: [78, 82, 80, 85, 88]

% A un nivel de significación del 5%, ¿podemos concluir que hay una diferencia
% significativa en el rendimiento promedio de los dos grupos?

grupo1 = [85, 90, 92, 88, 95];
grupo2 = [78, 82, 80, 85, 88];

alpha = 0.05;

[h, p] = ttest2(grupo1, grupo2, 'Alpha', alpha, 'Tail', 'both');

if h == 1
    disp("Se rechaza la hipótesis nula.");
    disp("Hay una diferencia significativa en el rendimiento promedio de los dos grupos.");
else
    disp("No se rechaza la hipótesis nula.");
    disp("No hay suficiente evidencia para concluir que hay una diferencia significativa en el " + ...
        "rendimiento promedio de los dos grupos.");
end



disp("__________________________________________________________________________________________");
disp("Ejercicio 2:");

% Supongamos que eres el gerente de calidad de una fábrica de productos electrónicos y estás
% interesado en probar si la duración promedio de la batería de un nuevo modelo de teléfono
% celular es igual a 12 horas, como se afirma. Para ello, recopilas una muestra de 50 teléfonos
% y registras la duración de la batería de cada uno de ellos.


% Datos de muestra
X = [9.5, 10.2, 9.8, 10.5, 9.7, 10.1, 10.3, 9.9, 10.4, 10.2];
mu = 0;  % Media
sigma = 1;  % Desviación estándar
m = 200;  % Número de filas
q = 1;  % Número de columnas

R = normrnd(mu, sigma, m, q);
media = mean(R);
desviacion_s = std(R);
%hist(R)

% Valor de la hipótesis nula
Ho = 10;

% Nivel de significancia
alpha = 0.05;

% prueba de hipótesis
[h, p, ci, t] = ztest(X, Ho, desviacion_s,"Alpha", alpha);

% resultados
disp(['Estadístico de prueba: ' num2str(t)]);
disp(['Intervalo de confianza: ' num2str(ci)]);
disp(['Valor p: ' num2str(p)]);
disp("Nivel de significancia a: " + alpha);

if h
    disp('Se rechaza la hipótesis nula');
else
    disp('No se rechaza la hipótesis nula');
end



disp("__________________________________________________________________________________________");
disp("Ejercicio 3:");

% Supongamos que quieres determinar si la media de una muestra de datos es significativamente diferente de un valor 
% de referencia. Por ejemplo, tienes un conjunto de datos que representa la altura de una muestra de personas y quieres
% saber si la media de altura difiere significativamente de 170 cm.


rng('default'); 
datos = normrnd(165, 5, 100, 1); % Datos simulados para la muestra (media = 165, desviación estándar = 5)

% Realizar la prueba t de una muestra
[h, p] = ttest(datos, 170);

% Imprimir los resultados
disp("El valor de h es: "+h);
if h
    disp('La media de altura difiere significativamente de 170 cm.');
else
    disp('La media de altura no difiere significativamente de 170 cm.');
end

disp(['El valor p es: ', num2str(p)]);
if (p < 0.05)
    disp('p es menor que el valor de significancia, se rechaza la hipotesis nula');
else
    disp('p es mayor que el valor de significancia, no se rechaza la hipotesis nula');
end

disp("__________________________________________________________________________________________");
