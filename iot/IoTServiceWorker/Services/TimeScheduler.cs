using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cronos;
using IoTServiceWorker.Services;

namespace IoTServiceWorker.Services
{
    public class TimeScheduler : ITimeScheduler
    {
        private readonly ILogger<Worker> _logger;
        public TimeScheduler(ILogger<Worker> logger)
        {
            _logger = logger;
        }
        public async Task RunSchedule(string cronPattern)
        {
            var parsedExp = CronExpression.Parse(cronPattern);
            var currentUtcTime = DateTimeOffset.UtcNow.UtcDateTime;
            var occurenceTime = parsedExp.GetNextOccurrence(currentUtcTime);

            var delay = occurenceTime.GetValueOrDefault();
            var delaySpan = delay - currentUtcTime;
            _logger.LogInformation("The run is delayed for {delay}. Current time: {time}", delay, DateTimeOffset.Now);

            await Task.Delay(delaySpan);
        }
    }
}
