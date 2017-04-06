namespace myjinxin
{
    using System;
    
    public class Kata
    {
        public string HtmlEndTagByStartTag(string StartTag){
          string[] words = StartTag.Split(' ');
          words[0] = words[0].Replace(">", string.Empty);
          return "</"+words[0].Substring(1,words[0].Length-1)+">";
        }
    }
}