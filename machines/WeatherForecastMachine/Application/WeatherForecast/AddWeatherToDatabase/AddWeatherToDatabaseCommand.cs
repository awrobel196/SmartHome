using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MediatR;

namespace WeatherForecastMachine.Application.WeatherForecast.AddWeatherToDatabase
{
    public class AddWeatherToDatabaseCommand : IRequest
    {
        public List<Domain.Entities.WeatherForecast> WeatherForecasts { get; set; }
    }
}
