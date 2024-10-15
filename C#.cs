using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

class Estadisticas
{
    static void Main()
    {
        Console.Write("Ingrese la cantidad de valores: \n=============================\n ");
        int n = int.Parse(Console.ReadLine());
        double[] nums = new double[n];

        for (int i = 0; i < n; i++)
        {
            Console.Write($"Valor {i + 1}: ");
            nums[i] = double.Parse(Console.ReadLine());
        }

        double media = CalcularMedia(nums);
        double desviacion = CalcularDesviacionEstandar(nums);

        Console.WriteLine($"Media Aritmetica: {media}");
        Console.WriteLine($"Desviacion estandar: {desviacion}");

        // Ejecutar pruebas
        EjecutarPruebas();
    }

    public static double CalcularMedia(double[] valores)
    {
        return valores.Average();
    }

    public static double CalcularDesviacionEstandar(double[] valores)
    {
        double media = CalcularMedia(valores);
        return Math.Sqrt(valores.Select(x => Math.Pow(x - media, 2)).Average());
    }

    public static void EjecutarPruebas()
    {
        TestCalcularMedia();
        TestCalcularDesviacionEstandar();
    }

    public static void TestCalcularMedia()
    {
        double[] valores = { 10, 20, 30, 40, 50 };
        double resultadoEsperado = 30.0;
        double resultado = CalcularMedia(valores);
        Console.WriteLine("Test Calcular Media: " + (resultadoEsperado == resultado ? "PASÓ" : "FALLO"));
    }

    public static void TestCalcularDesviacionEstandar()
    {
        double[] valores = { 10, 20, 30, 40, 50 };
        double resultadoEsperado = 14.1421;
        double resultado = CalcularDesviacionEstandar(valores);
        Console.WriteLine("Test Calcular Desviacion Estandar: " + (Math.Abs(resultadoEsperado - resultado) < 0.001 ? "PASÓ" : "FALLO"));
    }
}
