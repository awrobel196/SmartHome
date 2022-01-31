using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace WeatherForecastMachine.Application.WeatherForecast.AddWeatherToDatabase
{
    public class AddWeatherToDatabaseCommandHandler : IRequestHandler<AddWeatherToDatabaseCommand>
    {
        private readonly ApplicationDbContext _context;

        public AddWeatherToDatabaseCommandHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<Unit> Handle(AddWeatherToDatabaseCommand request, CancellationToken cancellationToken)
        {
            await _context.Database.ExecuteSqlRawAsync("TRUNCATE TABLE WeatherForecast");

            _context.AddRange(request.WeatherForecasts);
            await _context.SaveChangesAsync();

            return await Task.FromResult(Unit.Value);
        }
    }
}
