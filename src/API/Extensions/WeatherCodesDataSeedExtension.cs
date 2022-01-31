using Dapper;
using Domain.Entities;
using Infrastructure.Persistance;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace API.Extensions
{
    public static class WeatherCodesDataSeedExtension


    {
        public static WebApplication SeedWeatherCodesData(this WebApplication host, IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("ApplicationDbContext");
            var connection = new SqlConnection(connectionString);

            var weatherForecastCodes = connection.QueryFirstOrDefault<WeatherForecastCodes>
                ("SELECT * FROM WeatherForecastCodes");

            if (weatherForecastCodes == null)
            {
                List<WeatherForecastCodes> weatherForecastCodesList = GetWeatherForecastCodesList();

                string processQuery = "INSERT INTO WeatherForecastCodes VALUES " +
                                      "(@WeatherForecastCodesId, @Main, @Description, @Icon)";
                connection.Execute(processQuery, weatherForecastCodesList);
                return host;
            }
            else
            {
                return host;
            }

            
        }

        public static List<WeatherForecastCodes> GetWeatherForecastCodesList()
        {
            List<WeatherForecastCodes> weatherForecastCodesList = new List<WeatherForecastCodes>()
                {
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 200, Main = "Burza z piorunami",
                        Description = "Burza z pirunami i mrzawką", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 201, Main = "Burza z piorunami",
                        Description = "Burza z piorunami i deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 202, Main = "Burza z piorunami",
                        Description = "Burza z piorunami i mocnym deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 210, Main = "Burza z piorunami",
                        Description = "Lekka burza z piorunami", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 211, Main = "Burza z piorunami",
                        Description = "Burza z piorunami", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 212, Main = "Burza z piorunami",
                        Description = "Mocna burza z piorunami", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 221, Main = "Burza z piorunami",
                        Description = "Mocna burza z piorunami", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 230, Main = "Burza z piorunami",
                        Description = "Burza z pirunami i mrzawką", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 231, Main = "Burza z piorunami",
                        Description = "Burza z pirunami i mrzawką", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 232, Main = "Burza z piorunami",
                        Description = "Burza z pirunami i mrzawką", Icon = "https://assets6.lottiefiles.com/packages/lf20_ystgjqv4.json"
                    },

                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 300, Main = "Mrzawka",
                        Description = "Lekka mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_xx4r8tdi.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 301, Main = "Mrzawka",
                        Description = "Mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 302, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 310, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 311, Main = "Mrzawka",
                        Description = "Mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 312, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 313, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 314, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 321, Main = "Mrzawka",
                        Description = "Intensywna mrzawka", Icon = "https://assets1.lottiefiles.com/packages/lf20_0pbhvyhq.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 500, Main = "Deszcz",
                        Description = "Lekki deszcz", Icon = "https://assets1.lottiefiles.com/packages/lf20_xx4r8tdi.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 501, Main = "Deszcz",
                        Description = "Umiarkowany deszcz", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 502, Main = "Deszcz",
                        Description = "Intensywny deszcz", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 503, Main = "Deszcz",
                        Description = "Ulewa", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 504, Main = "Deszcz",
                        Description = "Ulewa", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 511, Main = "Deszcz",
                        Description = "Marznący deszcz", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 520, Main = "Deszcz",
                        Description = "Ulewa", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 521, Main = "Deszcz",
                        Description = "Deszcz", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 522, Main = "Deszcz",
                        Description = "Ulewa", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 531, Main = "Deszcz",
                        Description = "Ulewa", Icon = "https://assets1.lottiefiles.com/packages/lf20_bn1ldors.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 600, Main = "Śnieg",
                        Description = "Lekki śnieg", Icon = "https://assets6.lottiefiles.com/packages/lf20_hf07cbmv.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 601, Main = "Śnieg",
                        Description = "Śnieg", Icon = "https://assets6.lottiefiles.com/packages/lf20_hf07cbmv.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 602, Main = "Śnieg",
                        Description = "Intensywny śnieg", Icon = "https://assets6.lottiefiles.com/packages/lf20_hf07cbmv.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 611, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 612, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 613, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 615, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 616, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 620, Main = "Śnieg",
                        Description = "Śnieg z deszczem", Icon = "https://assets6.lottiefiles.com/packages/lf20_uhdaqfkg.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 621, Main = "Śnieg",
                        Description = "Śnieg", Icon = "https://assets6.lottiefiles.com/packages/lf20_hf07cbmv.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 622, Main = "Śnieg",
                        Description = "Intensywny śnieg", Icon = "https://assets6.lottiefiles.com/packages/lf20_hf07cbmv.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 701, Main = "Zachmurzenie",
                        Description = "Zachmurzenie", Icon = "https://assets6.lottiefiles.com/packages/lf20_1eaisi3u.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 711, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 721, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 731, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 741, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 751, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 761, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 762, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 771, Main = "Mgła",
                        Description = "Mgła", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 781, Main = "Tornado",
                        Description = "Tornado", Icon = "https://assets6.lottiefiles.com/packages/lf20_ci4fh3nd.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 800, Main = "Czyste niebo",
                        Description = "Czyste niebo", Icon = "https://assets9.lottiefiles.com/packages/lf20_xlky4kvh.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 801, Main = "Chmury",
                        Description = "Lekkie zachmurzenie", Icon = "https://assets8.lottiefiles.com/packages/lf20_trr3kzyu.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 802, Main = "Chmury",
                        Description = "Umiarkowane zachmurzenie", Icon = "https://assets8.lottiefiles.com/packages/lf20_trr3kzyu.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 803, Main = "Chmury",
                        Description = "Umiarkowane zachmurzenie", Icon = "https://assets8.lottiefiles.com/packages/lf20_trr3kzyu.json"
                    },
                    new WeatherForecastCodes()
                    {
                        WeatherForecastCodesId = 804, Main = "Chmury",
                        Description = "Całkowite zachmurzenie", Icon = "https://assets6.lottiefiles.com/packages/lf20_1eaisi3u.json"
                    }
                };

            return weatherForecastCodesList;
        }
    }
}
