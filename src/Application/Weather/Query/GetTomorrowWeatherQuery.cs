using Domain.Entities;
using MediatR;

namespace Application.Weather.Query
{
    public class GetTomorrowWeatherQuery : IRequest<WeatherForecast>
    {
    }
}
