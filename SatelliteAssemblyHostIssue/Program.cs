using System;
using System.Resources;
using System.Reflection;

class Program
{
    static void Main(string[] args)
    {
       var rm = new ResourceManager("ConsoleApp90.Resource1", typeof(Program).GetTypeInfo().Assembly);
       Console.WriteLine(rm.GetString("String1"));
    }
}