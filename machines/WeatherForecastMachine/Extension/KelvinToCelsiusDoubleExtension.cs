using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherForecastMachine.Extension
{
    public static class KelvinToCelsiusDoubleExtension
    {
        public static double ToCelsius(this double kelvinValue)
        {
            double celsiusValue = kelvinValue -273.15;
            return Math.Round(celsiusValue,2);
        }
    }
}
