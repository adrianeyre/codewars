public class Kata
{
  public static string[] TowerBuilder(int nFloors)
  {
    string[] result = new string[nFloors];
    int len = (nFloors - 1) * 2 + 1;
    for(int x=0; x<nFloors; x++)
    {
      int star = x * 2 + 1;
      int gap = (len-star) / 2;
      string li = "";
      for(int a=0; a<gap; a++){li += " ";}
      for(int a=0; a<star; a++){li += "*";}
      for(int a=0; a<gap; a++){li += " ";}
      result[x] = li;
    }
    return result;
  }
}