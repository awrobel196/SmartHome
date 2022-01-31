using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using MediatR;
using System.Text.Json;
using AutoMapper;
using WeatherForecastMachine.ModelHelpers.WeatherForecastAPIModelHelper;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;
using WeatherForecastMachine.Extension;

namespace WeatherForecast.Application.WeatherForecast.GetWeatherForecastFromAPI
{
    public class GetWeatherForecastFromAPIQueryHandler :
        IRequestHandler<GetWeatherForecastFromAPIQuery, List<Domain.Entities.WeatherForecast>>
    {
        private IMapper _mapper;
        private DateTime datenow;
        private HttpClient client;
        public string OperWeatherApiKey;
        public string OperWeatherApiLocation;
        private readonly ApplicationDbContext _context;

        public GetWeatherForecastFromAPIQueryHandler(IMapper mapper, ApplicationDbContext context)
        {
            _context = context;
            _mapper = mapper;
            datenow = DateTime.Now;
            client = new HttpClient();
            OperWeatherApiKey =  _context.GetEnvVariable("OperWeatherApiKey");
            OperWeatherApiLocation = _context.GetEnvVariable("OperWeatherApiLocation");
        }
        
        public async Task<List<Domain.Entities.WeatherForecast>> Handle(GetWeatherForecastFromAPIQuery request, CancellationToken cancellationToken)
        {
            HttpRequestMessage apiRequest = new HttpRequestMessage(HttpMethod.Get,
                "https://api.openweathermap.org/data/2.5/forecast?q="+OperWeatherApiLocation+ "&lang=pl&appid=" + OperWeatherApiKey + "");

            apiRequest.Headers.Add("Accept", "text/html");
            apiRequest.Headers.Add("Accept-Encoding", "gzip, deflate, br");
            apiRequest.Headers.Add("Accept-Language", "en");

            var response = client.Send(apiRequest);
            string responseBody = await response.Content.ReadAsStringAsync();

            //Deserialize response from API
            var deserializedResult = JsonSerializer.Deserialize<WeatherForecastModelHelper>(responseBody);

            //Add to list weather forecast for tommorow and day after tomorrow
            var weatherForecastList = deserializedResult.list
                .Where(x=> 
                              x.dt_txt.Contains(datenow.AddDays(1).ToString("yyyy-MM-dd 12:00:00")) 
                           || x.dt_txt.Contains(datenow.AddDays(2).ToString("yyyy-MM-dd 12:00:00"))
                           || x.dt_txt.Contains(datenow.AddDays(3).ToString("yyyy-MM-dd 12:00:00"))
                           || x.dt_txt.Contains(datenow.AddDays(4).ToString("yyyy-MM-dd 12:00:00")) 
                           || x.dt_txt.Contains(datenow.AddDays(5).ToString("yyyy-MM-dd 12:00:00")))
                .ToList();

            //Add to list current weather
            weatherForecastList.Add(deserializedResult.list.FirstOrDefault());

            //Order weather list
            weatherForecastList = weatherForecastList.OrderBy(x => x.dt_txt).ToList();

            //Map weather list
            var outputList = _mapper.Map<List<Domain.Entities.WeatherForecast>>(weatherForecastList);


            return await Task.FromResult(outputList);
        }
    }
}
