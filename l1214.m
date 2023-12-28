clc; clear;

numLanzDados = 50;
ejecutarExperimento(1, 6, 'dados', numLanzDados);

numLanzMonedas = 20;
ejecutarExperimento(0, 1, 'monedas', numLanzMonedas);


function ejecutarExperimento(valorMin, valorMax, tipoExp, numRepExp)
    % Crear una nueva figura para el gráfico
    figure;
    
    % Vector para almacenar los resultados de los lanzamientos
    resultados = zeros(1, numRepExp);
    
    % Realizar los lanzamientos
    for i = 1:numRepExp
        resultados(i) = round((valorMax - valorMin) * rand + valorMin);
    end
    
    % Mostrar los resultados de los lanzamientos
    disp("Los resultados obtenidos en el lanzamiento de " + numRepExp + " " ...
        + tipoExp + " son:");
    disp(resultados);
    
    % Calcular la distribución de probabilidades
    valores = valorMin:valorMax;
    numRepeticiones = histcounts(resultados, [valores, valorMax+1]);
    probabilidad = numRepeticiones / numRepExp;
    
    % Crear una tabla con los resultados
    tabla = [valores' probabilidad'];
    
    % Graficar la distribución de probabilidades
    bar(valores, probabilidad);
    
    % Configurar el título y etiquetas de los ejes
    title("Distribución de probabilidades (" + tipoExp + ") (" + numRepExp ...
        + " repeticiones)");
    xlabel('Valor');
    ylabel('Probabilidad');
    
    % Mostrar la tabla
    disp(tabla);
end