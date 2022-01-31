using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Entities;
using MediatR;

namespace AirMachine.Application.Air.AddAirToDatabase
{
    public class AddAirToDatabaseCommand : IRequest
    {
        public AirQuality airQuality { get; set; }
    }
}
