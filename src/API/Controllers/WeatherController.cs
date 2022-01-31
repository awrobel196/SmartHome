
using Application.Weather.Query;
using Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherController : ControllerBase
    {
        private readonly IMediator _mediator;
        public WeatherController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public async Task<ActionResult<List<WeatherForecast>>> GetWeatherForecast()
        {
            var request = new GetWeatherForecastQuery();
            var response = await _mediator.Send(request);

            return response;
        }

        [HttpGet]
        [Route("Current")]
        public async Task<ActionResult<WeatherForecast>> GetCurrentWeather()
        {
            var request = new GetCurrentWeatherQuery();
            var response = await _mediator.Send(request);

            return response;
        }

        [HttpGet]
        [Route("Tomorrow")]
        public async Task<WeatherForecast> GetTomorrowWeather()
        {
            var request = new GetTomorrowWeatherQuery();
            var response = await _mediator.Send(request);

            return response;
        }
    }
}
