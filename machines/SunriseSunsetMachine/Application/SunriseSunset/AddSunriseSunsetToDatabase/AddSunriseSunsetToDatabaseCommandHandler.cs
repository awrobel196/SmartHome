using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Domain.Entities;
using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace SunriseSunsetMachine.Application.SunriseSunset.AddSunriseSunsetToDatabase
{
    public class AddSunriseSunsetToDatabaseCommandHandler : IRequestHandler<AddSunriseSunsetToDatabaseCommand>
    {
        private readonly ApplicationDbContext _context;

        public AddSunriseSunsetToDatabaseCommandHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<Unit> Handle(AddSunriseSunsetToDatabaseCommand request, CancellationToken cancellationToken)
        {
            await _context.Database.ExecuteSqlRawAsync("TRUNCATE Table SunsetSunrise");
            
            _context.Add(request.SunsetSunrise);
            await _context.SaveChangesAsync();

            return await Task.FromResult(Unit.Value);
        }
    }
}
