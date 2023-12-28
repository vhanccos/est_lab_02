function muestra2(poblacion, tam, num_muestras)
%Parte3
% Vector para almacenar las medias de las muestras
    medias_muestrales = zeros(1, num_muestras);

    % Genera las medias de las muestras
    for i = 1:num_muestras
        % Se extrae la muestra con el tamaño requerido de la población ingresada
        mues = datasample(poblacion, tam);
        
        % Se calcula la media de la muestra extraída y se almacena
        medias_muestrales(i) = mean(mues);
    end

    % Grafica el histograma de las medias muestrales
    histogram(medias_muestrales);
    title('Distribución muestral de medias');
    xlabel('Medias');
    ylabel('Frecuencia');
    hold on;
    %Parte4
    
    % Calcula la media y la desviación estándar de las medias muestrales
    media_medias = mean(medias_muestrales);
    std_dev_medias = std(medias_muestrales);

    % Crea un rango de valores para el eje x
    x = linspace(min(medias_muestrales), max(medias_muestrales), 100);

    % Calcula los valores de la distribución normal
    y = normpdf(x, media_medias, std_dev_medias);

    % Grafica la curva normal
    figure;
    plot(x, y);
    title('Curva Normal de las Medias Muestrales');
    xlabel('Valor');
    ylabel('Densidad de Probabilidad');
    hold off;
end