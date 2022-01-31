
using Application.AirQuality.Query;
using Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AirQualityController : ControllerBase
    {
        private readonly IMediator _mediator;
        public AirQualityController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<ActionResult<AirQuality>> GetAirQuality()
        {
            var request = new GetAirQualityQuery();
            var response = await _mediator.Send(request);

            return response;
        }
    }
}
