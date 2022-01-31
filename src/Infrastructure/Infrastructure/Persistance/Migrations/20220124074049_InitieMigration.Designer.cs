﻿// <auto-generated />
using System;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Infrastructure.Persistance.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20220124074049_InitieMigration")]
    partial class InitieMigration
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("Domain.Entities.AirlyCaqiCodes", b =>
                {
                    b.Property<int>("AirlyCaqiCodesId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("AirlyCaqiCodesId"), 1L, 1);

                    b.Property<string>("Advice")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Color")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Icon")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("AirlyCaqiCodesId");

                    b.ToTable("AirlyCaqiCodes");
                });

            modelBuilder.Entity("Domain.Entities.AirQuality", b =>
                {
                    b.Property<int>("AirQualityId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("AirQualityId"), 1L, 1);

                    b.Property<int>("AirlyCaqiCodesId")
                        .HasColumnType("int");

                    b.Property<double>("AirlyCaqiValue")
                        .HasColumnType("float");

                    b.Property<double>("Humidity")
                        .HasColumnType("float");

                    b.Property<double>("PM1")
                        .HasColumnType("float");

                    b.Property<double>("PM10")
                        .HasColumnType("float");

                    b.Property<double>("PM25")
                        .HasColumnType("float");

                    b.Property<double>("Pressure")
                        .HasColumnType("float");

                    b.Property<double>("Temperature")
                        .HasColumnType("float");

                    b.Property<DateTime>("TestDateTime")
                        .HasColumnType("datetime2");

                    b.HasKey("AirQualityId");

                    b.HasIndex("AirlyCaqiCodesId");

                    b.ToTable("AirQuality");
                });

            modelBuilder.Entity("Domain.Entities.IoTDevice", b =>
                {
                    b.Property<int>("IoTDeviceId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IoTDeviceId"), 1L, 1);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IoTDeviceId");

                    b.ToTable("IoTDevice");
                });

            modelBuilder.Entity("Domain.Entities.IoTDeviceValues", b =>
                {
                    b.Property<int>("IoTDeviceValuesId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("IoTDeviceValuesId"), 1L, 1);

                    b.Property<double>("Humidity")
                        .HasColumnType("float");

                    b.Property<int>("IoTDeviceId")
                        .HasColumnType("int");

                    b.Property<double>("Pressure")
                        .HasColumnType("float");

                    b.Property<double>("Temperature")
                        .HasColumnType("float");

                    b.Property<DateTime>("TestDateTime")
                        .HasColumnType("datetime2");

                    b.HasKey("IoTDeviceValuesId");

                    b.HasIndex("IoTDeviceId");

                    b.ToTable("IoTDeviceValues");
                });

            modelBuilder.Entity("Domain.Entities.WeatherForecast", b =>
                {
                    b.Property<int>("WeatherForecastId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("WeatherForecastId"), 1L, 1);

                    b.Property<double>("FeelsTemperature")
                        .HasColumnType("float");

                    b.Property<double>("Temperature")
                        .HasColumnType("float");

                    b.Property<DateTime>("TestDateTime")
                        .HasColumnType("datetime2");

                    b.Property<int>("WeatherForecastCodesId")
                        .HasColumnType("int");

                    b.Property<double>("WindSpeed")
                        .HasColumnType("float");

                    b.HasKey("WeatherForecastId");

                    b.HasIndex("WeatherForecastCodesId");

                    b.ToTable("WeatherForecast");
                });

            modelBuilder.Entity("Domain.Entities.WeatherForecastCodes", b =>
                {
                    b.Property<int>("WeatherForecastCodesId")
                        .HasColumnType("int");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Icon")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Main")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("WeatherForecastCodesId");

                    b.ToTable("WeatherForecastCodes");
                });

            modelBuilder.Entity("Domain.Entities.AirQuality", b =>
                {
                    b.HasOne("Domain.Entities.AirlyCaqiCodes", "AirlyCaqiCodes")
                        .WithMany()
                        .HasForeignKey("AirlyCaqiCodesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("AirlyCaqiCodes");
                });

            modelBuilder.Entity("Domain.Entities.IoTDeviceValues", b =>
                {
                    b.HasOne("Domain.Entities.IoTDevice", "IoTDevice")
                        .WithMany()
                        .HasForeignKey("IoTDeviceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("IoTDevice");
                });

            modelBuilder.Entity("Domain.Entities.WeatherForecast", b =>
                {
                    b.HasOne("Domain.Entities.WeatherForecastCodes", "WeatherForecastCode")
                        .WithMany()
                        .HasForeignKey("WeatherForecastCodesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("WeatherForecastCode");
                });
#pragma warning restore 612, 618
        }
    }
}
