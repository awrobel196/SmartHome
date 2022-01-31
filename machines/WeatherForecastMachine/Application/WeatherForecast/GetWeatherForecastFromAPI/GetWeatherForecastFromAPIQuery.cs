using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MediatR;

namespace WeatherForecast.Application.WeatherForecast.GetWeatherForecastFromAPI
{
    public class GetWeatherForecastFromAPIQuery : IRequest<List<Domain.Entities.WeatherForecast>>
    {

    }
}
