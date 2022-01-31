using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.AirQuality.Query
{
    public class GetAirQualityQueryHandler : IRequestHandler<GetAirQualityQuery, Domain.Entities.AirQuality>
    {
        private readonly ApplicationDbContext _context;
        public GetAirQualityQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<Domain.Entities.AirQuality> Handle(GetAirQualityQuery request, CancellationToken cancellationToken)
        {
            var response = _context.AirQuality
                .Include(x=>x.AirlyCaqiCodes);

            return await Task.FromResult(response.First());
        }
    }
}
