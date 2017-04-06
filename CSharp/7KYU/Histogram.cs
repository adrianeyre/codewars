public class Dinglemouse 
{
  public static string Histogram(int[] results)
  {
    string ReturnString = "";
    for (int x = results.Length; x > 0; x--)
    {
        ReturnString += x.ToString() + "|";
        if (results[x - 1] != 0)
        {
            for (int y = 0; y < results[x - 1]; y++)
            {
                ReturnString += "#";
            }
            ReturnString += " " + (results[x - 1]).ToString();
        }
        ReturnString += "\n";
    }
    return ReturnString;
  }  
}