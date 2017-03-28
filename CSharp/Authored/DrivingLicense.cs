using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeWars
{
    class Kata
    {
        public string driver (params string[] data)
        {
            string result = "";
            string[] dateArray = new String[3];
            var months = new Dictionary<string, string> {{"Jan", "01"},{ "Feb", "02" }, { "Mar", "03" }, { "Apr", "04" }, { "May", "05" }, { "Jun", "06" }, { "Jul", "07" }, { "Aug", "08" }, { "Sep", "09" }, { "Oct", "10" }, { "Nov", "11" }, { "Dec", "12" } };
            dateArray = data[3].Split('-');
            string month = months[dateArray[1].Substring(0, 3)];

            // 1-5
            data[2] += "99999";
            result += data[2].Substring(0, 5);

            // 6
            result += dateArray[2][2];

            // 7-8
            if (data[4] == "M") { result += month; } else { result += (Int32.Parse(month) + 50).ToString(); }

            // 9-10
            result += dateArray[0];

            // 11
            result += dateArray[2][3];

            // 12-13
            result += data[0][0];
            if (data[1] == "") { result += "9"; } else { result += data[1][0]; }

            // 14-16
            result += "9AA";

            return result.ToUpper();
        }
    }
}