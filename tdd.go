package main

import (
	"fmt"
	"math"
	"os"
)

// Función para calcular la media
func calcularMedia(numeros []float64) float64 {
	var suma float64
	for _, num := range numeros {
		suma += num
	}
	return suma / float64(len(numeros))
}

// Función para calcular la desviación estándar
func calcularDesviacionEstandar(numeros []float64, esMuestra bool) float64 {
	n := len(numeros)

	if n <= 1 { // Validación: lista vacía o con un solo elemento
		fmt.Println("Error: Se necesita al menos dos elementos para calcular la desviación estándar.")
		return 0.0
	}

	media := calcularMedia(numeros)
	var sumaDiferenciasCuadradas float64

	for _, num := range numeros {
		sumaDiferenciasCuadradas += math.Pow(num-media, 2)
	}

	divisor := float64(n)
	if esMuestra {
		divisor = float64(n - 1)
	}

	return math.Sqrt(sumaDiferenciasCuadradas / divisor)
}

func main() {
	// Lista de números de ejemplo
	numeros := []float64{10.5, 12.7, 9.8, 14.6, 11.2}

	if len(numeros) == 0 {
		fmt.Println("Error: La lista está vacía, no se puede calcular la desviación estándar.")
		os.Exit(1) // Salimos del programa con código de error
	}

	// Calcular y mostrar la desviación estándar (como muestra)
	desviacionMuestra := calcularDesviacionEstandar(numeros, true)
	fmt.Printf("La desviación estándar (muestra) es: %.5f\n", desviacionMuestra)

	// Calcular y mostrar la desviación estándar (como población)
	desviacionPoblacion := calcularDesviacionEstandar(numeros, false)
	fmt.Printf("La desviación estándar (población) es: %.5f\n", desviacionPoblacion)
}
