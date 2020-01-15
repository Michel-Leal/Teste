using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Iniciar();
        }

        public static void Iniciar()
        {
            Console.Write("Escreva uma palavra para verificar se é um palíndromo: \n");
            string leitura = Console.ReadLine();

            if (VerificarPalindromo(leitura))
                Console.Write($"A palavra '{leitura}' é um palíndromo.");
            else
                Console.Write($"A palavra '{leitura}' não é um palíndromo.");

            Console.Read();
        }

        //Algoritmo
        public static bool VerificarPalindromo(string palavra)
        {
            string invertido = new string(palavra.Reverse().ToArray());
            return palavra.ToUpper().Equals(invertido.ToUpper());
        }
    }
}
