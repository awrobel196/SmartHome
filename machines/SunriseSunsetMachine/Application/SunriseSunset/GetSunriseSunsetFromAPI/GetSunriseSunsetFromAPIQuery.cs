using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Entities;
using MediatR;

namespace SunriseSunsetMachine.Application.SunriseSunset.GetSunriseSunsetFromAPI
{
    public class GetSunriseSunsetFromAPIQuery : IRequest<SunsetSunrise>
    {
    }
}
