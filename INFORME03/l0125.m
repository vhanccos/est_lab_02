disp("__________________________________________________________________________________________");
disp("Ejercicio 1:");
disp("Revise la figura generada");
figure;

%Hallar la recta de regresión lineal, para sus datos (X,Y)
Edad=[17,18,19,20,21,22];
Lenguajes=[2,10,9,4,3,2];

plot(Edad, Lenguajes, 'ro');
hold on;

% Agregar título y nombres de variables
title('Relación entre Edades y Lenguajes dominados');
xlabel('Edades');
ylabel('Lenguajes');

% Ajustar el tamaño de la figura
fig = gcf;
fig.Position(3:4) = [600 600];


disp("");
disp("__________________________________________________________________________________________");
disp("Ejercicio 2:");
% Grafique la recta de regresión y el diagrama de dispersión juntos en un solo cuadro de gráfico, con
% diferentes colores

lenguajes = [2, 10, 9, 4, 3, 2];
edades = [17, 18, 19, 20, 21, 22];

p = polyfit(edades, lenguajes, 1);
r_mat = corrcoef(edades, lenguajes);
r = r_mat(2);
det = r * r * 100;

disp("La ecuación de la recta de regresión lineal es:")
disp("y = " + p(1) + "*a + " + p(2))

disp("El coeficiente de de correlación de Pearson es:")
disp("r = " + r)

disp("El coeficiente de de determinación es:")
disp("R = " + det + "%")


disp("");
disp("__________________________________________________________________________________________");
disp("Ejercicio 3:");
disp("Revise la figura generada");
figure;

%Hallar la recta de regresión lineal, para sus datos (X,Y)
Edad=[17,18,19,20,21,22];
Lenguajes=[2,10,9,4,3,2];

plot(Edad, Lenguajes, 'ro');
hold on;

% Ajustar una línea de regresión lineal
coeficientes = polyfit(Edad, Lenguajes, 1);
recta_regresion = polyval(coeficientes, Edad);

% Graficar la recta de regresión
plot(Edad, recta_regresion, 'b-');

% Agregar título y nombres de variables
title('Relación entre Edades y Lenguajes dominados');
xlabel('Edades');
ylabel('Lenguajes');

% Ajustar el tamaño de la figura
fig = gcf;
fig.Position(3:4) = [600 600];


disp("");
disp("__________________________________________________________________________________________");
disp("Ejercicio 4:");
covarianza = cov(edades, lenguajes);
disp('La covarianza es:');
disp(covarianza(2,1));
