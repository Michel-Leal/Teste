using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DuplicadosNaLista
{
    class Program
    {
        static void Main(string[] args)
        {
            Iniciar();
        }

        public static void Iniciar()
        {
            int[,] vetor = { { 1, 2, 3 }, { 9, 2, 8 }, {4, 1, 3 } };
            int linhas = 3, colunas = 3;
            for (int i = 0; i < linhas; i++)
            {
                for (int j = 0; j < colunas; j++)
                {
                    int numero = vetor[i,j];
                    List<string> resultado = ProcurarNumeroVetor(numero, vetor, linhas, colunas, i, j);
                    if(resultado[0].Equals("1"))
                    {
                        Console.Write($"Número {numero} repetido na linha {resultado[1]} coluna {resultado[2]}. ");
                        Console.Read();
                        return;
                    }
                }
            }

            Console.Write("Não há numeros repetidos no vetor.");
            Console.Read();
        }

        public static List<string> ProcurarNumeroVetor(int numero, int[,] vetor, int linhas, int colunas, int linhaAtual, int colunaAtual)
        {
            List<string> resultado = new List<string>();

            for (int i = 0; i < linhas; i++)
            {
                for (int j = 0; j < colunas; j++)
                {
                    if (!(i == linhaAtual && j == colunaAtual))
                    {
                        if (vetor[i, j] == numero)
                        {
                            resultado.Add("1");
                            resultado.Add((i+1).ToString());
                            resultado.Add((j+1).ToString());
                            return resultado;
                        }
                    }
                }
            }

            resultado.Add("0");
            return resultado;
        }

    }
}
