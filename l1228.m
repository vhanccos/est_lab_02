% Informe: punto 1 programa 2 comb perm 3 simulac 4 grafica 5 ejerci 6
% 1. muestra para cada uno
% 
% 2. tipo de muestra
% cada grupo escoge un punto
% 
% proximo jueves revisamos el informe por grupo, cada punto 
% 
% 
% como evalua el docente, la grafica debe corresponder
% 
% a

datos = [38 15 10 12 62 46 25 56 27 24 23 21 20 25 38 27 48 35 50 65 59 58 47 42 37 35 32 40 28 14 12 24 66 73 72 70 68 65 54 48 34 33 21 19 61 59 47 46 30 30];
n = length(datos); % 50

tam_muestra = 7;


muestra = datasample(datos, tam_muestra);


disp("La muestra de tamaño " + tam_muestra + " es:");
disp(muestra);

p = datos;


%% generar muestras que sigan un modelo en especifico (normal estandarizada)

mu = 0;  % Media
sigma = 1;  % Desviación estándar
m = 200;  % Número de filas
q = 1;  % Número de columnas

R = normrnd(mu, sigma, m, q)
media = mean(R)
desviacion_s = std(R)
hist(R)

