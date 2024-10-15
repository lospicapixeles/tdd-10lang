<?php

// Función para calcular la media
function calcularMedia($numeros) {
    $suma = array_sum($numeros); // Suma los números
    $cantidad = count($numeros); // Cuenta los elementos
    return $suma / $cantidad; // Calcula la media
}

// Función para calcular la desviación estándar
function calcularDesviacionEstandar($numeros) {
    $media = calcularMedia($numeros); // Usa la función de media
    $sumaCuadrados = 0;

    foreach ($numeros as $numero) {
        $sumaCuadrados += pow($numero - $media, 2); // Suma de las diferencias al cuadrado
    }

    $cantidad = count($numeros);
    return sqrt($sumaCuadrados / $cantidad); // Calcula la desviación estándar
}

// Prueba para calcular la media
function testCalcularMedia() {
    $numeros = [2, 4, 6, 8, 10];
    $mediaEsperada = 6; // La media esperada
    
    $mediaCalculada = calcularMedia($numeros); // Calcula la media

    // Validamos el resultado
    assert($mediaCalculada === $mediaEsperada, 'Error: La media calculada no es correcta');
    echo "Prueba de media: PASADA\n";
}

// Prueba para calcular la desviación estándar
function testCalcularDesviacionEstandar() {
    $numeros = [2, 4, 6, 8, 10];
    $desviacionEsperada = 2.8284; // La desviación estándar esperada (aproximadamente)

    $desviacionCalculada = calcularDesviacionEstandar($numeros); // Calcula la desviación estándar

    // Validamos el resultado con un pequeño margen de error
    assert(abs($desviacionCalculada - $desviacionEsperada) < 0.001, 'Error: La desviación estándar calculada no es correcta');
    echo "Prueba de desviación estándar: PASADA\n";
}

// Ejecutamos las pruebas
testCalcularMedia();
testCalcularDesviacionEstandar();
