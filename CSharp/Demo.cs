using System;
using BamTools;

public class Demo
{
   public static void Main(String[] args)
   {
       var aln = new BamAlignment();
       var reader = new BamReader();
       reader.Open(args[0]);

       for (int i = 0; i < 10; i++)
       {
           reader.GetNextAlignment(aln);
           Console.WriteLine("{0} {1}", aln.Name, aln.Length);

           var foo = aln.CigarData[0];
       }
   }
}
