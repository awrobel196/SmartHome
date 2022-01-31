using System;
using System.Threading.Tasks;
using MediatR;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;
using SunriseSunsetMachine.Application.SunriseSunset.AddSunriseSunsetToDatabase;
using SunriseSunsetMachine.Application.SunriseSunset.GetSunriseSunsetFromAPI;

namespace SunriseSunsetMachine
{
    public class Function
    {
        private readonly IMediator _mediator;

        public Function(IMediator mediator)
        {
            _mediator = mediator;
        }
        [FunctionName("Function")]
        public async Task Run([TimerTrigger("0 */15 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var apiRequest = new GetSunriseSunsetFromAPIQuery();
            var apiResponse =  _mediator.Send(apiRequest);

            var dbRequest = new AddSunriseSunsetToDatabaseCommand()
            {
                SunsetSunrise = await apiResponse
            };

            var dbCommand = await _mediator.Send(dbRequest);
        }
    }
}
