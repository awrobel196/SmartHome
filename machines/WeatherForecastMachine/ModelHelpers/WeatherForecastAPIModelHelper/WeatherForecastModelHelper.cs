using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherForecastMachine.ModelHelpers.WeatherForecastAPIModelHelper
{
    public class WeatherForecastModelHelper
    {
        public string cod { get; set; }
        public int message { get; set; }
        public int cnt { get; set; }
        public List<ForecastModelHelper> list { get; set; }
        public List<ForecastCityModelHelper> city { get; set; }
    }
}
