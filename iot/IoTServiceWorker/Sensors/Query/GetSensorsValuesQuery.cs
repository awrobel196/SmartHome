using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Entities;
using MediatR;

namespace IoTServiceWorker.Sensors.Query
{
    public class GetSensorsValuesQuery : IRequest<IoTDeviceValues>
    {
    }
}
