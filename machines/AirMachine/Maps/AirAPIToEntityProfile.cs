using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AirMachine.ModelHelpers.AirlyAPIModelHelper;
using AutoMapper;
using Domain.Entities;
using Infrastructure.Persistance;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace AirMachine.Maps
{
    public class AirAPIToEntityProfile : Profile
    {
        public AirAPIToEntityProfile()
        {
            CreateMap<AirModelHelper, AirQuality>()
                .ForMember(dest => dest.TestDateTime,
                    act => act.MapFrom(src => src.current.fromDateTime))
                .ForMember(dest => dest.PM1,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "PM1").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.PM25,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "PM25").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.PM10,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "PM10").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.Humidity,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "HUMIDITY").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.Pressure,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "PRESSURE").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.Temperature,
                    act => act.MapFrom(src =>
                        src.current.values.Where(x => x.name == "TEMPERATURE").Select(x => x.value).FirstOrDefault()))
                .ForMember(dest => dest.AirlyCaqiValue,
                    act => act.MapFrom(src => src.current.indexes.Select(x => x.value).FirstOrDefault()));
            ;


        }
    }
}
