
// Función para calcular el promedio de una lista de números.
function calculateMean(numbers) {
  const sum = numbers.reduce((acc, curr) => acc + curr, 0);
  return sum / numbers.length;
}

// Función para calcular la desviación estándar de una lista de números al promedio.
function calculateStandardDeviation(numbers) {
  const mean = calculateMean(numbers);
  const squaredDifferencesSum = numbers.reduce((acc, curr) => acc + Math.pow(curr - mean, 2), 0);
  return Math.sqrt(squaredDifferencesSum / (numbers.length - 1));
}

class TestDD {
  pruebaMean() {
    if (calculateMean([1, 2, 3, 4, 5]) === 3) {
      console.log('Test Mean aprobado! ✅');
    } else {
      console.log('Test Mean fallido! ❌');
    }
  }

  pruebaStandardD() {
    if (calculateStandardDeviation([5, 5, 5, 5, 5]) === 0) {
      console.log('Test Standard Deviation aprobado! ✅');
    } else {
      console.log('Test Standard Deviation fallido! ❌');
    }
  }
}

const test = new TestDD();
test.pruebaMean();
test.pruebaStandardD();

