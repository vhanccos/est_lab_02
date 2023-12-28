function muestra(poblacion, tam)
%Parte 1
%Se extrae la muestra con el tamaño requerido de la poblacion ingresada.
    mues = datasample(poblacion, tam);
disp("La muestra de tamaño "+tam+" es:");
disp(mues);

%Parte 2
%Se calcula la media de la muestra extraida.
disp("La media de la muestra es: ");
disp(mean(mues));


end