using MediatR;
using Domain.Entities;

namespace Application.AirQuality.Query
{
    public class GetAirQualityQuery : IRequest<Domain.Entities.AirQuality>
    {
    }
}
