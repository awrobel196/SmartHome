using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace AirMachine.Application.Air.AddAirToDatabase
{
    public class AddAirToDatabaseCommandHandler : IRequestHandler<AddAirToDatabaseCommand>
    {
        private readonly ApplicationDbContext _context;
        public AddAirToDatabaseCommandHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<Unit> Handle(AddAirToDatabaseCommand request, CancellationToken cancellationToken)
        {
            await _context.Database.ExecuteSqlRawAsync("TRUNCATE TABLE AirQuality");
            await _context.AirQuality.AddAsync(request.airQuality);
            await _context.SaveChangesAsync();

            return await Task.FromResult(Unit.Value);
        }
    }
}
