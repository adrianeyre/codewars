using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeWars
{
    class Kata
    {
        public Dictionary<double, bool> drive (double[,] drinks, string finished, string drive_time)
        {
            double total_units = 0.0;
            for (int i = 0; i < drinks.Length/2; i++){total_units += drinks[i, 0] * drinks[i, 1] / 1000;} 
            string[] fda = finished.Split(':');
            var fff = new DateTime(1950, 1, 1, Convert.ToInt32(fda[0]), Convert.ToInt32(fda[1]), 0);
            string[] dtt = drive_time.Split(':');
            var ddd = new DateTime(1950, 1, 1, Convert.ToInt32(dtt[0]), Convert.ToInt32(dtt[1]), 0);
            if (fff > ddd) { ddd = ddd.AddDays(1); }
            var time_when_can_drive = fff.AddHours(total_units);
            var result = new Dictionary<double, bool> { { Math.Round(total_units,2), time_when_can_drive < ddd } };
            return result;
        }
    }
}