using System;
using System.Configuration;
using System.Reflection;
using System.Threading.Tasks;
using MediatR;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using WeatherForecast.Application.WeatherForecast.GetWeatherForecastFromAPI;
using WeatherForecastMachine.Application.WeatherForecast.AddWeatherToDatabase;

namespace WeatherForecastMachine
{
    public class Function
    {
        private readonly IMediator _mediator;

        public Function(IMediator mediator)
        {
            _mediator = mediator;
        }

        [FunctionName("Function")]
        public async Task Run([TimerTrigger("0 */1 * * * *")]TimerInfo myTimer, ILogger log, ExecutionContext context)
        {


            var apiRequest = new GetWeatherForecastFromAPIQuery();
            var apiResult = await _mediator.Send(apiRequest);

            var dbRequest = new AddWeatherToDatabaseCommand()
            {
                WeatherForecasts = apiResult
            };
            var dbCommand = await _mediator.Send(dbRequest);


        }
    }
}
