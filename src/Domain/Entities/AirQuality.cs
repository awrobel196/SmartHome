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
    public class AirQuality
    {
        [Key]
        public int AirQualityId { get; set; }

        [ForeignKey("AirlyCaqiCodes")]
        public int AirlyCaqiCodesId { get; set; }
        public double PM1 { get; set; }
        public double PM25 { get; set; }
        public double PM10 { get; set; }
        public double Pressure { get; set; }
        public double Humidity { get; set; }
        public double Temperature { get; set; }
        public double AirlyCaqiValue { get; set; }
        public AirlyCaqiCodes AirlyCaqiCodes { get; set; }
        public DateTime TestDateTime { get; set; }
    }
}
