using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.Weather.Query
{
    public class GetTomorrowWeatherForecastQueryHandler : IRequestHandler<GetTomorrowWeatherQuery, WeatherForecast>
    {
        private readonly ApplicationDbContext _context;
        public GetTomorrowWeatherForecastQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<WeatherForecast> Handle(GetTomorrowWeatherQuery request, CancellationToken cancellationToken)
        {
            var result = _context.WeatherForecast.Skip(1).Take(1)
                .Include(x=>x.WeatherForecastCode)
                .AsEnumerable();

            return await Task.FromResult(result.FirstOrDefault() ?? new WeatherForecast());
        }
    }
}
