#include <iostream>
#include <vector>
#include <cmath>  // Para usar sqrt()

// Función para calcular la media
double calcularMedia(const std::vector<double>& numeros) {
    if (numeros.empty()) {  // Validación: Lista vacía
        std::cerr << "Error: La lista está vacía." << std::endl;
        return 0.0;
    }

    double suma = 0.0;
    for (double num : numeros) {
        suma += num;
    }
    return suma / numeros.size();
}

// Función para calcular la desviación estándar
double calcularDesviacionEstandar(const std::vector<double>& numeros, bool esMuestra = true) {
    int n = numeros.size();
    if (n == 0) {  // Validación: Lista vacía
        std::cerr << "Error: La lista está vacía, no se puede calcular la desviación estándar." << std::endl;
        return 0.0;
    }

    double media = calcularMedia(numeros);
    double sumaDiferenciasCuadradas = 0.0;

    for (double num : numeros) {
        sumaDiferenciasCuadradas += std::pow(num - media, 2);
    }

    // Dividir entre (n - 1) si es muestra, o entre n si es población
    double divisor = esMuestra ? (n - 1) : n;
    if (divisor == 0) {  // Evitar división por cero en listas con un solo elemento
        std::cerr << "Error: No se puede calcular la desviación estándar de una lista con un solo elemento." << std::endl;
        return 0.0;
    }

    return std::sqrt(sumaDiferenciasCuadradas / divisor);
}

int main() {
    // Lista de números de ejemplo
    std::vector<double> numeros = {10.5, 12.7, 9.8, 14.6, 11.2};

    // Calcular y mostrar la desviación estándar (como muestra)
    double desviacionMuestra = calcularDesviacionEstandar(numeros);
    std::cout << "La desviación estándar (muestra) es: " << desviacionMuestra << std::endl;

    // Calcular y mostrar la desviación estándar (como población)
    double desviacionPoblacion = calcularDesviacionEstandar(numeros, false);
    std::cout << "La desviación estándar (población) es: " << desviacionPoblacion << std::endl;

    return 0;
}
