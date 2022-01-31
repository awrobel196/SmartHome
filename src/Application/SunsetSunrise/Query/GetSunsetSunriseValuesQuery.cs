using MediatR;

namespace Application.SunsetSunrise.Query
{
    public class GetSunsetSunriseValuesQuery : IRequest<Domain.Entities.SunsetSunrise>
    {
    }
}
