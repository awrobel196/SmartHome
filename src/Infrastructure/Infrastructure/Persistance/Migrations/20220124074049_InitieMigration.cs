using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Persistance.Migrations
{
    public partial class InitieMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AirlyCaqiCodes",
                columns: table => new
                {
                    AirlyCaqiCodesId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Advice = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Icon = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Color = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AirlyCaqiCodes", x => x.AirlyCaqiCodesId);
                });

            migrationBuilder.CreateTable(
                name: "IoTDevice",
                columns: table => new
                {
                    IoTDeviceId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IoTDevice", x => x.IoTDeviceId);
                });

            migrationBuilder.CreateTable(
                name: "WeatherForecastCodes",
                columns: table => new
                {
                    WeatherForecastCodesId = table.Column<int>(type: "int", nullable: false),
                    Main = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Icon = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WeatherForecastCodes", x => x.WeatherForecastCodesId);
                });

            migrationBuilder.CreateTable(
                name: "AirQuality",
                columns: table => new
                {
                    AirQualityId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AirlyCaqiCodesId = table.Column<int>(type: "int", nullable: false),
                    PM1 = table.Column<double>(type: "float", nullable: false),
                    PM25 = table.Column<double>(type: "float", nullable: false),
                    PM10 = table.Column<double>(type: "float", nullable: false),
                    Pressure = table.Column<double>(type: "float", nullable: false),
                    Humidity = table.Column<double>(type: "float", nullable: false),
                    Temperature = table.Column<double>(type: "float", nullable: false),
                    AirlyCaqiValue = table.Column<double>(type: "float", nullable: false),
                    TestDateTime = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AirQuality", x => x.AirQualityId);
                    table.ForeignKey(
                        name: "FK_AirQuality_AirlyCaqiCodes_AirlyCaqiCodesId",
                        column: x => x.AirlyCaqiCodesId,
                        principalTable: "AirlyCaqiCodes",
                        principalColumn: "AirlyCaqiCodesId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "IoTDeviceValues",
                columns: table => new
                {
                    IoTDeviceValuesId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IoTDeviceId = table.Column<int>(type: "int", nullable: false),
                    Temperature = table.Column<double>(type: "float", nullable: false),
                    Pressure = table.Column<double>(type: "float", nullable: false),
                    Humidity = table.Column<double>(type: "float", nullable: false),
                    TestDateTime = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_IoTDeviceValues", x => x.IoTDeviceValuesId);
                    table.ForeignKey(
                        name: "FK_IoTDeviceValues_IoTDevice_IoTDeviceId",
                        column: x => x.IoTDeviceId,
                        principalTable: "IoTDevice",
                        principalColumn: "IoTDeviceId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "WeatherForecast",
                columns: table => new
                {
                    WeatherForecastId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    WeatherForecastCodesId = table.Column<int>(type: "int", nullable: false),
                    Temperature = table.Column<double>(type: "float", nullable: false),
                    FeelsTemperature = table.Column<double>(type: "float", nullable: false),
                    WindSpeed = table.Column<double>(type: "float", nullable: false),
                    TestDateTime = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WeatherForecast", x => x.WeatherForecastId);
                    table.ForeignKey(
                        name: "FK_WeatherForecast_WeatherForecastCodes_WeatherForecastCodesId",
                        column: x => x.WeatherForecastCodesId,
                        principalTable: "WeatherForecastCodes",
                        principalColumn: "WeatherForecastCodesId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AirQuality_AirlyCaqiCodesId",
                table: "AirQuality",
                column: "AirlyCaqiCodesId");

            migrationBuilder.CreateIndex(
                name: "IX_IoTDeviceValues_IoTDeviceId",
                table: "IoTDeviceValues",
                column: "IoTDeviceId");

            migrationBuilder.CreateIndex(
                name: "IX_WeatherForecast_WeatherForecastCodesId",
                table: "WeatherForecast",
                column: "WeatherForecastCodesId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AirQuality");

            migrationBuilder.DropTable(
                name: "IoTDeviceValues");

            migrationBuilder.DropTable(
                name: "WeatherForecast");

            migrationBuilder.DropTable(
                name: "AirlyCaqiCodes");

            migrationBuilder.DropTable(
                name: "IoTDevice");

            migrationBuilder.DropTable(
                name: "WeatherForecastCodes");
        }
    }
}
