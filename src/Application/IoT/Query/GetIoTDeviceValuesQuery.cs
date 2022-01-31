using Domain.Entities;
using MediatR;

namespace Application.IoT.Query
{
    public class GetIoTDeviceValuesQuery : IRequest<List<IoTDeviceValues>>
    {
    }
}
