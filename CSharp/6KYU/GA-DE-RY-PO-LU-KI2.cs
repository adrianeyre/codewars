public class Kata
{
    public static string Encode(string str, string key)
    {
        return EncodeDecode(str, key);
    }

    public static string Decode(string str, string key)
    {
        return EncodeDecode(str, key);
    }

    private static string EncodeDecode(string str, string key)
    {
        key = key + key.ToUpper();
        for (int i = 0; i < key.Length; i+=2)
        {
            str = str.Replace(key[i], '~').Replace(key[i+1], key[i]).Replace('~', key[i+1]);
        }
        return str;
    }
}