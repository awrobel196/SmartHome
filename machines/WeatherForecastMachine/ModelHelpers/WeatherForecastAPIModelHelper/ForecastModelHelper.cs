using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherForecastMachine.ModelHelpers.WeatherForecastAPIModelHelper
{
    public class ForecastModelHelper
    {
        public long dt { get; set; }
        public DetailWeatherInfoModelHelper main { get; set; }
        public WindInfoModelHelper wind { get; set; }
        public List<MainWeatherInfoModelHelper> weather { get; set; }
        public string dt_txt { get; set; }
    }
}
