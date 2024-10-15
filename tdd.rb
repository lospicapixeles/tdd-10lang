# Función para calcular la media
def calcular_media(numeros)
    suma = numeros.sum # Suma los números
    cantidad = numeros.size # Cuenta los elementos
    suma.to_f / cantidad # Calcula la media y lo convierte a flotante
  end
  
  # Función para calcular la desviación estándar
  def calcular_desviacion_estandar(numeros)
    media = calcular_media(numeros) # Usa la función de media
    suma_cuadrados = numeros.reduce(0) do |suma, numero|
      suma + (numero - media) ** 2 # Suma de las diferencias al cuadrado
    end
  
    cantidad = numeros.size
    Math.sqrt(suma_cuadrados / cantidad) # Calcula la desviación estándar
  end
  
  # Prueba para calcular la media
  def test_calcular_media
    numeros = [2, 4, 6, 8, 10]
    media_esperada = 6 # La media esperada
    
    media_calculada = calcular_media(numeros) # Calcula la media
  
    # Validamos el resultado
    raise "Error: La media calculada no es correcta" unless media_calculada == media_esperada
    puts "Prueba de media: PASADA"
  end
  
  # Prueba para calcular la desviación estándar
  def test_calcular_desviacion_estandar
    numeros = [2, 4, 6, 8, 10]
    desviacion_esperada = 2.8284 # La desviación estándar esperada (aproximadamente)
  
    desviacion_calculada = calcular_desviacion_estandar(numeros) # Calcula la desviación estándar
  
    # Validamos el resultado con un pequeño margen de error
    raise "Error: La desviación estándar calculada no es correcta" unless (desviacion_calculada - desviacion_esperada).abs < 0.001
    puts "Prueba de desviación estándar: PASADA"
  end
  
  # Ejecutamos las pruebas
  test_calcular_media
  test_calcular_desviacion_estandar
