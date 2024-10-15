import unittest

class TestEstadisticas(unittest.TestCase):

    def test_media(self):
        self.assertEqual(media([1, 2, 3, 4, 5]), 3)
        self.assertEqual(media([10, 20, 30]), 20)

    def test_desviacion_estandar(self):
        self.assertAlmostEqual(desviacion_estandar([1, 2, 3, 4, 5]), 1.4142135623730951)
        self.assertAlmostEqual(desviacion_estandar([10, 20, 30]), 10.0)

    def test_media_lista_vacia(self):
        with self.assertRaises(ValueError):
            media([])

    def test_desviacion_estandar_lista_vacia(self):
        with self.assertRaises(ValueError):
            desviacion_estandar([])

if __name__ == '__main__':
    unittest.main()
