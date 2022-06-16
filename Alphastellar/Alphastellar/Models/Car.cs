using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphastellar.Models
{
    public class Car : Vehicle
    {
        public int wheelswheels { get; set; }
        public bool headlights { get; set; }
        public string type { get ; set; }
        public int ID { get; set ; }
        public string color { get ; set ; }

        public string turnOnLight()
        {
            if (headlights == true)
            {
                return "turn on";
            }
            return "turn off";
        }

    }
}
