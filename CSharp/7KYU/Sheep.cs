using System.Linq;

namespace CodeWars
{
    public class Kata
    {
        public int lostSheep(int[] friday, int[] saturday, int total)
        {
            return total - friday.Sum() - saturday.Sum();
        }
    }
}