using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using MediatR;

namespace IoTServiceWorker.Sensors.Command
{
    public class SaveSensorValuesCommandHandler : IRequestHandler<SaveSensorValuesCommand>
    {
        private readonly IConfiguration _configuration;
        public SaveSensorValuesCommandHandler(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public Task<Unit> Handle(SaveSensorValuesCommand request, CancellationToken cancellationToken)
        {
         

            var connectionString = _configuration["ApplicationDbContext"];
            var deviceName = _configuration["DeviceName"];

            using (var connection = new SqlConnection(connectionString))
            {
                var result = connection.QueryFirstOrDefault("SELECT * FROM IoTDevice LEFT JOIN IoTDeviceValues ON IoTDevice.IoTDeviceId = IoTDeviceValues.IoTDeviceId WHERE IoTDevice.Name = @DeviceName ",
                    new
                    {
                        DeviceName = "Kuchnia"
                    });


                var temperature = result.Temperature;


                if (temperature != null)
                {
                    connection.Execute("UPDATE IoTDeviceValues SET Temperature=@temp, Pressure=@pres, Humidity=@hum, TestDateTime = @dat WHERE IoTDeviceId=@id",
                        new
                        {
                            id = result.IoTDeviceId,
                            temp = request.IoTValues.Temperature,
                            pres = request.IoTValues.Pressure,
                            hum = request.IoTValues.Humidity,
                            dat = DateTime.Now
                        });
                }
                else
                {
                    connection.Execute("INSERT INTO IoTDeviceValues VALUES(@id,@temp,@pres,@hum,@dat)",
                        new
                        {
                            id = result.IoTDeviceId,
                            temp = request.IoTValues.Temperature,
                            pres = request.IoTValues.Pressure,
                            hum = request.IoTValues.Humidity,
                            dat = DateTime.Now
                        });
                }

            }


            return Task.FromResult(new Unit());
        }
    }
}
