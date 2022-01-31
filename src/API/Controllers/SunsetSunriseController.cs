
using Application.SunsetSunrise.Query;
using Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SunsetSunriseController : ControllerBase
    {
        private readonly IMediator _mediator;

        public SunsetSunriseController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<SunsetSunrise> Get()
        {
            var request = new GetSunsetSunriseValuesQuery();

            var response = _mediator.Send(request);

            return await response;
        }

    }
}
