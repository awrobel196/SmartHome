using System;
using System.Threading.Tasks;
using AirMachine.Application.Air.AddAirToDatabase;
using AirMachine.Application.Air.GetValuesFromAirAPI;
using MediatR;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;

namespace AirMachine
{
    public class Function
    {

        private readonly IMediator _mediator;

        public Function(IMediator mediator)
        {
            _mediator = mediator;
        }

        [FunctionName("Function")]
        public async Task Run([TimerTrigger("0 */30 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var apiRequest = new GetValuesFromAirlyAPIQuery();
            var apiResult = await _mediator.Send(apiRequest);

            var dbRequest = new AddAirToDatabaseCommand()
            {
                airQuality = apiResult
            };

            var dbCommand = await _mediator.Send(dbRequest);
        }
    }
}
