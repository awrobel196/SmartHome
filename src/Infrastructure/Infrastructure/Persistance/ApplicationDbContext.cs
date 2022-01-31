using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistance
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        { }

        public DbSet<AirlyCaqiCodes> AirlyCaqiCodes { get; set; }
        public DbSet<AirQuality> AirQuality { get; set; }
        public DbSet<IoTDevice> IoTDevice { get; set; }
        public DbSet<IoTDeviceValues> IoTDeviceValues { get; set; }
        public DbSet<WeatherForecast> WeatherForecast { get; set; }
        public DbSet<WeatherForecastCodes> WeatherForecastCodes { get; set; }
        public DbSet<SunsetSunrise> SunsetSunrise { get; set; }

        public DbSet<EnvVariable> EnvVariable { get; set; }
    }
}
