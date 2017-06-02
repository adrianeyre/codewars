public class Kata
{
    public static string Decode(int[] code, int n)
    {
        var key = n.ToString().ToCharArray();
        var num = 0;
        char[] result = new char[code.Length];
        for (int i = 0; i < code.Length; i++)
        {
            result[i] = (char)(code[i]+96- int.Parse(key[num].ToString()));
            num++;
            if (num >= key.Length) { num = 0; }
        }
        return new string(result);
    }
}