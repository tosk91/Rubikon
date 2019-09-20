using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CezarioSifrasWFApp
{
    class Cezaris
    {
        //char[] abecele = new char[52] {'A','a','B','b','C','c','D','d','E','e','F','f','G','g','H','h','I','i','J','j','K','k','L','l','M','m','N','n','O','o','P','p','Q','q','R','r','S','s','T','t','U','u','V','v','W','w','X','x','Y','y','Z','z'};
        //private string LTabc = "AĄaąBbCcČčDdEĘeęĖėFfGgHhIĮiįYyJjKkLlMmNnOoPpRrSsŠšTtUuŲųŪūVvZzŽž";

        
        private char Kodavimas(char simbolis, int raktas)
        {
            if (!char.IsLetter(simbolis))
                return simbolis;
            if (char.IsUpper(simbolis))
                return (char)(((simbolis + raktas) - 65) % 26 + 65);
            return (char)(((simbolis + raktas) - 97) % 26 + 97);
            //char d = char.IsUpper(simbolis) ? 'A' : 'a';
            //return (char)(((simbolis + raktas - d) % 26) + d);
        }

        //private char ToStringLT(int n) => LTabc[n];
        //private int ToIntLT(char ch)
        //{
        //    for (int i = 0; i < LTabc.Length; i++)
        //    {
        //        if (LTabc[i] == ch)
        //        {
        //            return i;
        //        }
        //    }
        //    return -1;
        //}

        //private char KodavimasLT(char simbolis, int raktas)
        //{
        //    int o1 = (ToIntLT(simbolis) + raktas) % 64;
        //    return Convert.ToChar(o1);
        //}

        public string UzkoduokMane(string input, int raktas)
        {
            string output = string.Empty;
            if (string.IsNullOrEmpty(input))
                return output;
            foreach (char ch in input)
                if (char.IsWhiteSpace(ch)) {  }
                else output += Kodavimas(ch, raktas);
            return output;
        }

        public string AtkoduokMane(string input, int raktas) => UzkoduokMane(input, 26 - raktas); // ( VhurdUrncdej , 3 ) x3

    }
}