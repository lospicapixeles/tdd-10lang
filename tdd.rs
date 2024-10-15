// Función para calcular el promedio de una lista de números.
fn calculate_mean(numbers: &[f64]) -> f64 {
    let sum: f64 = numbers.iter().sum();
    sum / numbers.len() as f64
}

// Función para calcular la desviación estándar de una lista de números.
fn calculate_standard_deviation(numbers: &[f64]) -> f64 {
    let mean = calculate_mean(numbers);
    let squared_differences_sum: f64 = numbers.iter()
        .map(|&num| (num - mean).powi(2))
        .sum();
    (squared_differences_sum / (numbers.len() as f64 - 1.0)).sqrt()
}

// Estructura TestDD para pruebas
struct TestDD;

impl TestDD {
    fn prueba_mean(&self) {
        if calculate_mean(&[1.0, 2.0, 3.0, 4.0, 5.0]) == 3.0 {
            println!("Test Mean aprobado! ✅");
        } else {
            println!("Test Mean fallido! ❌");
        }
    }

    fn prueba_standard_deviation(&self) {
        if calculate_standard_deviation(&[5.0, 5.0, 5.0, 5.0, 5.0]) == 0.0 {
            println!("Test Standard Deviation aprobado! ✅");
        } else {
            println!("Test Standard Deviation fallido! ❌");
        }
    }
}

fn main() {
    let test = TestDD;
    test.prueba_mean();
    test.prueba_standard_deviation();
}
