using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class IoTDeviceValues
    {
        [Key]
        public int IoTDeviceValuesId { get; set; }

        [ForeignKey("IoTDevice")]
        public int IoTDeviceId { get; set; }

        public double Temperature { get; set; }
        public double Pressure { get; set; }
        public double Humidity { get; set; }
        public DateTime TestDateTime { get; set; }
        public IoTDevice IoTDevice { get; set; }

    }
}
