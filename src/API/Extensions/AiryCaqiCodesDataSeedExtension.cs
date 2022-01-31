using Dapper;
using Domain.Entities;
using Microsoft.Data.SqlClient;

namespace API.Extensions
{
    public static class AiryCaqiCodesDataSeedExtension
    {
        public static WebApplication SeedAirlyCaqiCodesData(this WebApplication host, IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("ApplicationDbContext");
            var connection = new SqlConnection(connectionString);

            var weatherForecastCodes = connection.QueryFirstOrDefault<AirlyCaqiCodes>
                ("SELECT * FROM AirlyCaqiCodes");

            if (weatherForecastCodes == null)
            {
                List<AirlyCaqiCodes> airlyCaqiCodesList = GetAirlyCaqiCodesList();

                string processQuery = "INSERT INTO AirlyCaqiCodes VALUES " +
                                      "(@Name, @Description, @Advice, @Icon, @Color)";
                connection.Execute(processQuery, airlyCaqiCodesList);
                return host;
            }
            else
            {
                return host;
            }
        }

        public static List<AirlyCaqiCodes> GetAirlyCaqiCodesList()
        {
            List<AirlyCaqiCodes> airlyCaqiCodesList = new List<AirlyCaqiCodes>()
            {
                new AirlyCaqiCodes()
                {
                    Name = "MEDIUM", Description = "Jakość powietrza jest średnia",
                    Advice = "Something's hanging in the air. Take care!", Icon = "MEDIUM", Color = "#EFBB0F"
                },
                new AirlyCaqiCodes()
                {
                    Name = "VERY_HIGH", Description = "Zła jakość powietrza!", Advice = "Hold your breath as you commute",
                    Icon = "VERY_HIGH", Color = "#EF2A36"
                },
                new AirlyCaqiCodes()
                {
                    Name = "EXTREME", Description = "Bardzo duże zanieczyszczenie!",
                    Advice = "If possible, stay at home. A longer stay outside can affect your health",
                    Icon = "EXTREME", Color = "#B00057"
                },
                new AirlyCaqiCodes()
                {
                    Name = "VERY_LOW", Description = "Świetna jakość powietrza!", Advice = "Green, green, green!",
                    Icon = "VERY_LOW", Color = "#6BC926"
                },
                new AirlyCaqiCodes()
                {
                    Name = "LOW", Description = "Cóż... Bywało lepiej..", Advice = "Take a breath!", Icon = "LOW",
                    Color = "#D1CF1E"
                },
                new AirlyCaqiCodes()
                {
                    Name = "HIGH", Description = "Zła jakość powietrza!", Advice = "Take a breath!", Icon = "HIGH",
                    Color = "#EF7120"
                },
            };

            return airlyCaqiCodesList;
        }
    }
}
