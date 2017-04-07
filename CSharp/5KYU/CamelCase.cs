using System;
using System.Collections.Generic;

public class Kata
{
  public static string ToCamelCase(string str)
  {
    if (str == "") { return ""; }
    char[] letters = str.ToCharArray();
    List<char> result = new List<char>();
    bool camel = false;
    result.Add(letters[0]);
    for (int x=1; x < letters.Length; x++)
    {
        if (letters[x]=='_' || letters[x] == '-')
        {
            camel = true;
        }
        else
        {
            if (camel) { result.Add(letters[x] = Char.ToUpper(letters[x])); } else { result.Add(letters[x]); }
            camel = false;
        }
    }
    return string.Join("",result);
  }
}