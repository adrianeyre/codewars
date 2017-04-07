using System;

public class Brace
{

    public static bool validBraces(String braces)
    {
        int level = 0;
        char[] c = braces.ToCharArray();
        char[] check = new char[c.Length*10];
        for (int a = 0; a < c.Length; a++)
        {
            Console.WriteLine("letter = " + c[a]);
            if (c[a] == '(' || c[a] == '{' || c[a] == '[') { level++; check[level] = c[a]; }
            if (c[a] == ')' && check[level] == '(') { level--; } else { if (c[a] == ')' && check[level] != '(') { level = level + 10; } }
            if (c[a] == '}' && check[level] == '{') { level--; } else { if (c[a] == '}' && check[level] != '{') { level = level + 10; } }
            if (c[a] == ']' && check[level] == '[') { level--; } else { if (c[a] == ']' && check[level] != '[') { level = level + 10; } }
        }
        if (level == 0) { return true; } else { return false; }
    }
}