using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.Weather.Query
{
    public class GetWeatherForecastQueryHandler : IRequestHandler<GetWeatherForecastQuery, List<WeatherForecast>>
    {
        private readonly ApplicationDbContext _context;
        public GetWeatherForecastQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<List<WeatherForecast>> Handle(GetWeatherForecastQuery request, CancellationToken cancellationToken)
        {
            var result = _context.WeatherForecast
                .Skip(1)
                .Take(4)
                .Include(x=>x.WeatherForecastCode)
                .AsEnumerable();

            return await Task.FromResult(result.ToList()??new List<WeatherForecast>());
        }
    }
}
