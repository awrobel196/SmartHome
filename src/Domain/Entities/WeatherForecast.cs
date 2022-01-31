using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Enums;

namespace Domain.Entities
{
    public class WeatherForecast
    {
        [Key]
        public int WeatherForecastId { get; set; }
        [ForeignKey("WeatherForecastCodes")]
        public int WeatherForecastCodesId { get; set; }
        
        public double Temperature { get; set; }
        public double FeelsTemperature { get; set; }
        public double WindSpeed { get; set; }
        public double Humidity { get; set; }
        public double Pressure { get; set; }

        public DateTime TestDateTime { get; set; }
        public WeatherForecastCodes WeatherForecastCode { get; set; }
    }
}
