
using Application.IoT.Query;
using Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class IoTDataController : ControllerBase
    {
        private readonly IMediator _mediator;

        public IoTDataController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<ActionResult<List<IoTDeviceValues>>> GetIoTValues()
        {
            var request = new GetIoTDeviceValuesQuery();

            var response = await _mediator.Send(request);

            return response;
        }
    }
}
