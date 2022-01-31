using Domain.Entities;
using MediatR;

namespace Application.Weather.Query
{
    public class GetWeatherForecastQuery : IRequest<List<WeatherForecast>>
    {
    }
}
