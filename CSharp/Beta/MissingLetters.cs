using System;

namespace Kata
{
  public class WordGuesser
  {
    public int CountCorrectCharacters(string correctWord, string guess)
    {
      if(correctWord.Length!=guess.Length){throw new System.InvalidOperationException("ERROR");}
      int result = 0;
      for(int i=0; i<correctWord.Length;i++)
      {
        if(correctWord[i]==guess[i]){result++;}
      }
      return result;
    }
  }
}