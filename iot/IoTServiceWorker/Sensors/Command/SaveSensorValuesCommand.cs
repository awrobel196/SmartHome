using Domain.Entities;
using MediatR;

namespace IoTServiceWorker.Sensors.Command
{
    public class SaveSensorValuesCommand : IRequest
    {
        public IoTDeviceValues IoTValues { get; set; }
    }
}
