using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using AirMachine.Extensions;
using AirMachine.ModelHelpers.AirlyAPIModelHelper;
using AutoMapper;
using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace AirMachine.Application.Air.GetValuesFromAirAPI
{
    public class GetValuesFromAirlyAPIQueryHandler : IRequestHandler<GetValuesFromAirlyAPIQuery, AirQuality>
    {
        private IMapper _mapper;
        private DateTime datenow;
        private HttpClient client;
        private ApplicationDbContext _context;
        public string AirlyApiKey;
        public string AirlyApiLat;
        public string AirlyApiLng;

        public GetValuesFromAirlyAPIQueryHandler(IMapper mapper, ApplicationDbContext context)
        {
            _mapper = mapper;
            client = new HttpClient();
            datenow = DateTime.Now;
            _context = context;

            AirlyApiKey = _context.GetEnvVariable("AirlyApiKey");
            AirlyApiLat = _context.GetEnvVariable("AirlyApiLat");
            AirlyApiLng = _context.GetEnvVariable("AirlyApiLng");

        }
        public async Task<AirQuality> Handle(GetValuesFromAirlyAPIQuery request, CancellationToken cancellationToken)
        {
            HttpRequestMessage apiRequest = new HttpRequestMessage(HttpMethod.Get,
                "https://airapi.airly.eu/v2/measurements/nearest?lat="+AirlyApiLat+ "&lng="+AirlyApiLng+"&maxDistanceKM=5&maxResults=1");

            apiRequest.Headers.Add("Accept-Language", "pl");
            apiRequest.Headers.Add("apikey", AirlyApiKey);

            var response = client.Send(apiRequest);
            string responseBody = await response.Content.ReadAsStringAsync();

            //Deserialize response from API
            var deserializedResult = JsonSerializer.Deserialize<AirModelHelper>(responseBody);

            var outputList = _mapper.Map<AirQuality>(deserializedResult);
            var airlyCaqiCode = _context.AirlyCaqiCodes.Where(x => x.Name == deserializedResult.current.indexes[0].level)
                .FirstOrDefault();

            outputList.AirlyCaqiCodes = airlyCaqiCode;



            return await Task.FromResult(outputList);
        }
    }
}
