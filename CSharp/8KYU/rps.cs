using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Kata
{
  public string Rps(string p1, string p2)
  {
    if (p1=="rock" && p2=="scissors"){return "Player 1 won!";}
    if (p1=="paper" && p2=="rock"){return "Player 1 won!";}
    if (p1=="scissors" && p2=="paper"){return "Player 1 won!";}
    
    if (p2=="rock" && p1=="scissors"){return "Player 2 won!";}
    if (p2=="paper" && p1=="rock"){return "Player 2 won!";}
    if (p2=="scissors" && p1=="paper"){return "Player 2 won!";}
    return "Draw!";
  }
}