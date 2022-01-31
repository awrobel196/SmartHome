using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class IoTDevice
    {
        [Key] public int IoTDeviceId { get; set; }
        public string Name { get; set; }
    }
}
