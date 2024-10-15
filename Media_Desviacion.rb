class Estadisticas
  def self.media(datos)
    raise ArgumentError, "La lista no puede estar vacía" if datos.empty?
    datos.sum.to_f / datos.size
  end

  def self.desviacion_estandar(datos)
    raise ArgumentError, "La lista no puede estar vacía" if datos.empty?
    mu = media(datos)
    varianza = datos.sum { |x| (x - mu) ** 2 } / datos.size
    Math.sqrt(varianza)
  end
end
