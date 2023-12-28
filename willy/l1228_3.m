function muestra3(poblacion, tam, num_muestras)
%Parte5
% Vector para almacenar las varianzas muestrales
varianzas_muestrales = zeros(1, num_muestras);
% Genera las varianzas muestrales
for i = 1:num_muestras
    % Se extrae la muestra con el tamaño requerido de la población ingresada
    mues = datasample(poblacion, tam);
    
    % Se calcula la varianza de la muestra extraída y se almacena
    varianzas_muestrales(i) = var(mues);
end
% Muestra histograma de las varianzas simuladas
histogram(varianzas_muestrales, 'Normalization', 'probability');
title('Distribución Muestral de Varianzas');
xlabel('Varianza');
ylabel('Frecuencia Relativa');
end
