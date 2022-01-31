using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IoTServiceWorker.Services
{
    public interface ITimeScheduler
    {
        public Task RunSchedule(string cronPattern);
    }
}
