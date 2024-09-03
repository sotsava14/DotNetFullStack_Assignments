using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    internal class QuestionTwo
    {
        static void Main(string[] args)
        {
            int pID;
            string pName;
            int x;
            int y;
            double total;
            double discount;
            double final;

            Console.WriteLine("Enter Product ID : ");
            pID = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter Product Name : ");
            Product_Name = Console.ReadLine();

            Console.WriteLine("Enter Unit Price : ");
            x = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter Quantity : ");
            y = int.Parse(Console.ReadLine());

            total = x * y;

            if (y <= 10)
            {
                discount = 0;
                final = total;
                Console.WriteLine("Total Amount : " + total);
                Console.WriteLine("Discount Amount : " + discount);
                Console.WriteLine("Final Amount : " + final);
            }
            else if (y > 10 && y <= 20)
            {
                discount = 0.1 * total;
                final = total - (discount);
                Console.WriteLine("Total Amount : " + total);
                Console.WriteLine("Discount Amount : " + discount);
                Console.WriteLine("Final Amount : " + final);
            }
            else if (y > 20 && y <= 30)
            {
                discount = 0.15 * total;
                final = total - (discount);
                Console.WriteLine("Total Amount : " + total);
                Console.WriteLine("Discount Amount : " + discount);
                Console.WriteLine("Final Amount : " + final);
            }
            else if (y > 30)
            {
                discount = 0.2 * total;
                final = total - (discount);
                Console.WriteLine("Total Amount : " + total);
                Console.WriteLine("Discount Amount : " + discount);
                Console.WriteLine("Final Amount : " + final);
            }

            Console.ReadLine();
        }
    }
}