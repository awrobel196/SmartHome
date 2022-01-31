using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.Weather.Query
{
    public class GetCurrentWeatherQueryHandler : IRequestHandler<GetCurrentWeatherQuery, WeatherForecast>
    {
        private readonly ApplicationDbContext _context;
        public GetCurrentWeatherQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<WeatherForecast> Handle(GetCurrentWeatherQuery request, CancellationToken cancellationToken)
        {
            var result = _context.WeatherForecast
                .Include(x => x.WeatherForecastCode);

            return await Task.FromResult(result.First()??new WeatherForecast());
        }
    }
}
