require 'rspec'

RSpec.describe Estadisticas do
  describe '.media' do
    it 'calcula la media de un conjunto de números' do
      expect(Estadisticas.media([1, 2, 3, 4, 5])).to eq(3.0)
      expect(Estadisticas.media([10, 20, 30])).to eq(20.0)
    end

    it 'lanza un error si la lista está vacía' do
      expect { Estadisticas.media([]) }.to raise_error(ArgumentError, "La lista no puede estar vacía")
    end
  end

  describe '.desviacion_estandar' do
    it 'calcula la desviación estándar de un conjunto de números' do
      expect(Estadisticas.desviacion_estandar([1, 2, 3, 4, 5])).to be_within(0.01).of(1.4142)
      expect(Estadisticas.desviacion_estandar([10, 20, 30])).to eq(10.0)
    end

    it 'lanza un error si la lista está vacía' do
      expect { Estadisticas.desviacion_estandar([]) }.to raise_error(ArgumentError, "La lista no puede estar vacía")
    end
  end
end
