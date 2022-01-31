using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.IoT.Query
{
    public class GetIoTDeviceValuesQueryHandler : IRequestHandler<GetIoTDeviceValuesQuery, List<IoTDeviceValues>>
    {
        private readonly ApplicationDbContext _context;
        public GetIoTDeviceValuesQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }



        
        [Obsolete]
        public async Task<List<IoTDeviceValues>> Handle(GetIoTDeviceValuesQuery request, CancellationToken cancellationToken)
        {
            return await GetSampleData(request);
        }


        /// <summary>
        /// Method using to get data from IoT Devices
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<List<IoTDeviceValues>> GetDataFromDevices(GetIoTDeviceValuesQuery request)
        {
            var result = _context.IoTDeviceValues
                .Include(x => x.IoTDevice)
                .AsEnumerable();

            return await Task.FromResult(result.ToList());
        }

        /// <summary>
        /// Method using to get sample data
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<List<IoTDeviceValues>> GetSampleData(GetIoTDeviceValuesQuery request)
        {
            Random random = new();

            List<IoTDeviceValues> result = new List<IoTDeviceValues>()
            {
                new IoTDeviceValues()
                {
                    Temperature = 20.1,
                    Humidity = 45,
                    Pressure = 1001,
                    IoTDevice = new IoTDevice()
                    {
                        Name = "Kuchnia"
                    }
                },
                new IoTDeviceValues()
                {
                    Temperature = 24.5,
                    Humidity = 57,
                    Pressure = 996,
                    IoTDevice = new IoTDevice()
                    {
                        Name = "Salon"
                    }
                },
            };

            return await Task.FromResult(result.ToList());
        }
    }
}
