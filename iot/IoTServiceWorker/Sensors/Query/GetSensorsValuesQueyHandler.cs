using Domain.Entities;
using Iot.Device.Bmxx80;
using Iot.Device.Common;
using MediatR;
using System.Device.I2c;
using UnitsNet;

namespace IoTServiceWorker.Sensors.Query
{
    public class GetSensorsValuesQueyHandler : IRequestHandler<GetSensorsValuesQuery, IoTDeviceValues>
    {
        public Task<IoTDeviceValues> Handle(GetSensorsValuesQuery request, CancellationToken cancellationToken)
        {
            //// bus id on the raspberry pi 3
            const int busId = 1;
            //// set this to the current sea level pressure in the area for correct altitude readings
            Pressure defaultSeaLevelPressure = WeatherHelper.MeanSeaLevel;

            I2cConnectionSettings i2cSettings = new(busId, Bme280.SecondaryI2cAddress);
            using I2cDevice i2cDevice = I2cDevice.Create(i2cSettings);
            using Bme280 bme80 = new Bme280(i2cDevice)
            {
                // set higher sampling
                TemperatureSampling = Sampling.LowPower,
                PressureSampling = Sampling.UltraHighResolution,
                HumiditySampling = Sampling.Standard,

            };



            var readResult = bme80.Read();

            bme80.TryReadAltitude(defaultSeaLevelPressure, out var altValue);


            var temperature = readResult.Temperature?.DegreesCelsius ?? 0;
            var barometer = readResult.Pressure?.Hectopascals ?? 0;
            var humidity = readResult.Humidity?.Percent ?? 0;

            return Task.FromResult(new IoTDeviceValues()
            {

                Humidity = Math.Round(humidity, 1),
                Pressure = Math.Round(barometer, 1),
                Temperature = Math.Round(temperature, 1)
            });

        }
    }
}
