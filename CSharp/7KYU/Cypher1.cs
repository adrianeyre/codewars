public class Kata
{
    public static int[] Encode(string str, int n)
    {
        var key = n.ToString().ToCharArray();
        var num = 0;
        int[] result = new int[str.Length];
        for (int i = 0; i < str.Length; i++)
        {
            result[i] = ((int)str[i] - 96) + int.Parse(key[num].ToString());
            num++;
            if (num >= key.Length) { num = 0; }
        }
        return result;
    }
}