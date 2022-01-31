using Infrastructure.Persistance;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.SunsetSunrise.Query
{
    public class GetSunsetSunriseValuesQueryHandler : IRequestHandler<GetSunsetSunriseValuesQuery, Domain.Entities.SunsetSunrise>
    {
        private readonly ApplicationDbContext _context;
        public GetSunsetSunriseValuesQueryHandler(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<Domain.Entities.SunsetSunrise> Handle(GetSunsetSunriseValuesQuery request, CancellationToken cancellationToken)
        {
            var result = _context.SunsetSunrise.FirstOrDefaultAsync();

            return await result ?? new Domain.Entities.SunsetSunrise();
        }
    }
}
