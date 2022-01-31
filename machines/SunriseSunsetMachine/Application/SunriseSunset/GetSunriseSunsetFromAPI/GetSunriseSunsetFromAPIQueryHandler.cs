using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using SunriseSunsetMachine.Extensions;
using SunriseSunsetMachine.ModelHelpers;

namespace SunriseSunsetMachine.Application.SunriseSunset.GetSunriseSunsetFromAPI
{
    public class GetSunriseSunsetFromAPIQueryHandler : IRequestHandler<GetSunriseSunsetFromAPIQuery, SunsetSunrise>
    {
        private readonly string _latitude;
        private readonly string _longitude;
        private string responseBody;
        private SunsetSunrise _sunsetSunrise;
        private readonly ApplicationDbContext _context;

        public GetSunriseSunsetFromAPIQueryHandler(ApplicationDbContext context)
        {
            _context = context;
            _latitude = _context.GetEnvVariable("SunLatitude");
            _longitude = _context.GetEnvVariable("SunLongitude");
            _sunsetSunrise = new SunsetSunrise();
        }
        public async Task<SunsetSunrise> Handle(GetSunriseSunsetFromAPIQuery request, CancellationToken cancellationToken)
        {
            HttpRequestMessage apiRequest = new HttpRequestMessage(HttpMethod.Get,
                "https://api.sunrise-sunset.org/json?lat=49.56016444517581&lng=20.7374412&date=today");

          

            using(var client = new HttpClient())
            {
                var response = client.Send(apiRequest);
                responseBody = await response.Content.ReadAsStringAsync();
            }
            
            var deserializedResult = JsonSerializer.Deserialize<SunriseSunsetModelHelper>(responseBody);
            _sunsetSunrise.Sunset =DateTime.Parse(deserializedResult.results.sunset).AddHours(1);
            _sunsetSunrise.Sunrise =DateTime.Parse(deserializedResult.results.sunrise).AddHours(1);

            

            return _sunsetSunrise;
        }
    }
}
