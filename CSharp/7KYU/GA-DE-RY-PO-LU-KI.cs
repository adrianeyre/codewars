using System;

public class Kata
{
    private static char[,] letterSwap = new char[,] { { 'g', 'a' }, { 'd', 'e' }, { 'r', 'y' }, { 'p', 'o' }, { 'l', 'u' }, { 'k', 'i' } };

    public static string Encode(string str)
    {
        return EncodeDecode(str);
    }

    public static string Decode(string str)
    {
        return EncodeDecode(str);
    }

    private static string EncodeDecode(string str)
    {
        for (int i = 0; i < letterSwap.Length / 2; i++)
        {
            str = str.Replace(letterSwap[i, 0], '~').Replace(letterSwap[i, 1], letterSwap[i, 0]).Replace('~', letterSwap[i, 1]);
            str = str.Replace(Char.ToUpper(letterSwap[i, 0]), '~').Replace(Char.ToUpper(letterSwap[i, 1]), Char.ToUpper(letterSwap[i, 0])).Replace('~', Char.ToUpper(letterSwap[i, 1]));
        }
        return str;
    }
}