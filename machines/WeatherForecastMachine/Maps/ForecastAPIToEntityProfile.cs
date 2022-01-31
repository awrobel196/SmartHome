using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using WeatherForecastMachine.Extension;
using WeatherForecastMachine.ModelHelpers.WeatherForecastAPIModelHelper;

namespace WeatherForecastMachine.Maps
{
    public class ForecastAPIToEntityProfile : Profile
    {
        public ForecastAPIToEntityProfile()
        {
            CreateMap<ForecastModelHelper, Domain.Entities.WeatherForecast>()
                .ForMember(dest => dest.FeelsTemperature, act => act.MapFrom(src => src.main.feels_like.ToCelsius()))
                .ForMember(dest=>dest.Humidity, act=>act.MapFrom(src=>src.main.humidity))
                .ForMember(dest=>dest.Pressure,act=>act.MapFrom(src=>src.main.pressure))
                .ForMember(dest => dest.Temperature, act => act.MapFrom(src => src.main.temp.ToCelsius()))
                .ForMember(dest => dest.TestDateTime, act => act.MapFrom(src => src.dt_txt))
                .ForMember(dest => dest.WindSpeed, act => act.MapFrom(src => src.wind.speed))
                .ForMember(dest => dest.WeatherForecastCodesId,
                    act => act.MapFrom(src => src.weather.FirstOrDefault().id));
        }
    }
  
}
