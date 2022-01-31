using Cronos;
using Domain.Entities;
using MediatR;
using IoTServiceWorker.Sensors.Command;
using IoTServiceWorker.Sensors.Query;
using IoTServiceWorker.Services;

namespace IoTServiceWorker
{
    public class Worker : BackgroundService
    {
        private readonly ILogger<Worker> _logger;
        private readonly IMediator _mediator;
        private readonly ITimeScheduler _scheduler;

        public Worker(ILogger<Worker> logger, IMediator mediator, ITimeScheduler scheduler)
        {
            _logger = logger;
            _mediator = mediator;
            _scheduler = scheduler;
        }

        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            while (!stoppingToken.IsCancellationRequested)
            {
                _logger.LogInformation("Worker running at: {time}", DateTimeOffset.Now);

                IoTDeviceValues value = await GetValueFromSensor();

                await SaveValueToDatabase(value);
                await _scheduler.RunSchedule("* * * * *");
            }
        }


        public async Task<IoTDeviceValues> GetValueFromSensor()
        {
            var response = new GetSensorsValuesQuery();
            return await _mediator.Send(response);
        }

        public async Task SaveValueToDatabase(IoTDeviceValues value)
        {
            var request = new SaveSensorValuesCommand()
            {
                IoTValues = value
            };
            await _mediator.Send(request);
        }
    }
}